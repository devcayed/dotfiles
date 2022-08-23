/*
 * Available context bindings:
 *   COLUMNS     List<DataColumn>
 *   ROWS        Iterable<DataRow>
 *   OUT         { append() }
 *   FORMATTER   { format(row, col); formatValue(Object, col); getTypeName(Object, col); isStringLiteral(Object, col); }
 *   TRANSPOSED  Boolean
 * plus ALL_COLUMNS, TABLE, DIALECT
 *
 * where:
 *   DataRow     { rowNumber(); first(); last(); data(): List<Object>; value(column): Object }
 *   DataColumn  { columnNumber(), name() }
 */

def RES = 0G
i = 0
ROWS.each { row ->
  COLUMNS.each { column ->
    def value = row.value(column)
    if (value instanceof Number) {
      RES += value
      i++
    }
    else if (value.toString().isBigDecimal()) {
      RES += value.toString().toBigDecimal()
      i++
    }
  }
}
if (i > 0) {
  RES = RES / i
  OUT.append(RES.toString())
}
else {
  OUT.append("Not enough values")
}