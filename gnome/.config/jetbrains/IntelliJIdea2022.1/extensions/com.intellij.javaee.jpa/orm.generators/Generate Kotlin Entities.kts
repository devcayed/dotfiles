@file:Suppress("UNRESOLVED_REFERENCE")
import com.intellij.database.extensions.Files
import com.intellij.database.model.DasObject
import com.intellij.database.model.DasTable
import com.intellij.database.util.DasUtil
import com.intellij.jpa.scripts.Column
import com.intellij.jpa.scripts.JpaScriptsHelper
import com.intellij.jpa.scripts.JpaScriptsHelper.createFromTemplate
import com.intellij.jpa.scripts.JpaScriptsHelper.toCamelCase
import com.intellij.jpa.scripts.Relation
import com.intellij.openapi.project.Project

val mySelection = bindings["SELECTION"] as Iterable<DasObject>
val myProject = bindings["PROJECT"] as Project
val myFiles = bindings["FILES"] as Files

val relations = JpaScriptsHelper.calculateRelations(mySelection, myProject)
JpaScriptsHelper.chooseDestinationAndRun(mySelection, myProject) { table: DasTable, packageName: String ->
  runCodeGeneration(table, packageName) }?.let { myFiles.refresh(it)}

fun runCodeGeneration(table: DasTable, packageName: String) {
  val className = "${toCamelCase(table.name, true)}Entity"
  JpaScriptsHelper.saveFile("$className.kt", generateEntityClass(table, relations, className, packageName), myProject)
}

fun generateEntityClass(table: DasTable,
                        relations: Map<String, List<Relation>>,
                        className: String,
                        packageName: String): String {
  val isPrimaryKeyComplex = DasUtil.getColumns(table).toList().count { DasUtil.isPrimary(it) } > 1
  val columns = JpaScriptsHelper.getColumnsInfo(table, relations)
  val attributes = mapOf<String, Any?>(
    "PACKAGE" to packageName,
    "TABLE_NAME" to table.name,
    "SCHEMA" to DasUtil.getSchema(table),
    "CATALOG" to DasUtil.getCatalog(table),

    "CLASS_NAME" to className,
    "PROPERTIES" to generateProperties(columns),
    "RELATIONAL_PROPERTIES" to generateRelations(table, relations),

    "TO_STRING_METHOD" to generateToString(columns),
    "HASHCODE_METHOD" to generateHashCode(columns),
    "EQUALS_METHOD" to generateEquals(columns, className))
    .let {
      if (isPrimaryKeyComplex) {
        val idFields = columns.filter { it.isPrimary }
        it + mapOf<String, Any?>(
          "WITH_COMPLEX_PK" to true,
          "PK_PROPERTIES" to generateProperties(idFields),
          "PK_EQUALS_METHOD" to generateEquals(idFields, "${className}PK"),
          "PK_HASHCODE_METHOD" to generateHashCode(idFields))
      }
      else it
    }
  return createFromTemplate("Kotlin Entity.kt", attributes, myProject, true)
}

fun generateEquals(columns: List<Column>, className: String): String = createFromTemplate(
  "Kotlin Equals Method.kt",
  mapOf<String, Any?>(
    "CLASS_NAME" to className,
    "PROPERTIES" to columns.map { toCamelCase(it.name, false) }),
  myProject)

fun generateHashCode(columns: List<Column>): String =
  createFromTemplate("Kotlin HashCode Method.kt", mapOf<String, Any?>("FIELDS" to columns.map { toCamelCase(it.name, false) }), myProject)

fun generateToString(columns: List<Column>): String =
  createFromTemplate("Kotlin ToString Method.kt", mapOf<String, Any?>("FIELDS" to columns.map { toCamelCase(it.name, false) }), myProject)

fun generateProperties(columns: List<Column>): String {
  return columns.joinToString("") {
    createFromTemplate("Kotlin Property.kt",
                       mapOf<String, Any?>(
                         "IS_ID" to it.isPrimary,
                         "COLUMN" to it.name,
                         "NULLABLE" to it.isNullable,
                         "UPDATABLE" to it.isUpdatable,
                         "PROPERTY_NAME" to toCamelCase(it.name, false),
                         "PROPERTY_TYPE" to it.getKotlinType()),
                       myProject) as String
  }
}

fun generateRelations(table: DasTable, relations: Map<String, List<Relation>>): String {
  return relations[table.name]?.joinToString("") {
    if (it.relationOwner) {
      createFromTemplate("Kotlin Relation Owner Property.kt",
                         mapOf<String, Any?>(
                           "RELATION_TYPE" to it.relationType,
                           "REFERENCED_ENTITY_NAME" to toCamelCase(it.targetTable, true),
                           "MULTIPLE_COLUMNS" to (it.sourceColumns.size > 1),
                           "JOINS" to if (it.sourceColumns.isNotEmpty() && it.targetColumns.isNotEmpty()) {
                             (it.sourceColumns as List<String>).zip(it.targetColumns as List<String>)
                               .joinToString(",\n") {
                                 createFromTemplate("Jpa JoinColumn Annotation.kt", mapOf("COLUMN" to it.first, "REFERENCED_COLUMN" to it.second), myProject)
                               }
                           }
                           else null
                         ),
                         myProject)
    }
    else {
      createFromTemplate("Kotlin Relation Dependent Property.kt",
                         mapOf<String, Any?>(
                           "RELATION_TYPE" to it.relationType,
                           "MAPPED_BY" to toCamelCase(table.name, true),
                           "COLLECTION_TYPE" to needStoreInCollection(it.relationType, it.relationOwner),
                           "PROPERTY_TYPE" to toCamelCase(it.targetTable, true)),
                         myProject)
    }
  } ?: ""
}

fun needStoreInCollection(relationType: String, isOwner: Boolean): Boolean =
  (relationType == "OneToMany" && !isOwner) || (relationType == "ManyToOne" && isOwner)