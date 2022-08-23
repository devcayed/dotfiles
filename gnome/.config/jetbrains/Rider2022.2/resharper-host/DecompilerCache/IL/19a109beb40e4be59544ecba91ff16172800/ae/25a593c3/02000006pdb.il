// Type: Test.PasswordChecker 
// Assembly: Test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 19A109BE-B40E-4BE5-9544-ECBA91FF1617
// Location: /home/nico/RiderProjects/Test/Test/bin/Debug/net6.0/Test.dll
// Sequence point data from /home/nico/RiderProjects/Test/Test/bin/Debug/net6.0/Test.pdb

.class public auto ansi beforefieldinit
  Test.PasswordChecker
    extends [System.Runtime]System.Object
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
    = (01 00 01 00 00 ) // .....
    // unsigned int8(1) // 0x01
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
    = (01 00 00 00 00 ) // .....
    // unsigned int8(0) // 0x00

  .class nested private sealed auto ansi serializable beforefieldinit
    '<>c'
      extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public static initonly class Test.PasswordChecker/'<>c' '<>9'
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .field public static class [System.Runtime]System.Func`2<char, bool> '<>9__7_0'
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .method private hidebysig static specialname rtspecialname void
      .cctor() cil managed
    {
      .maxstack 8

      IL_0000: newobj       instance void Test.PasswordChecker/'<>c'::.ctor()
      IL_0005: stsfld       class Test.PasswordChecker/'<>c' Test.PasswordChecker/'<>c'::'<>9'
      IL_000a: ret

    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
      IL_0006: nop
      IL_0007: ret

    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool
      '<HasSufficientSpecialCharacters>b__7_0'(
        char character
      ) cil managed
    {
      .maxstack 8

      // [29 17 - 29 100]
      IL_0000: ldarg.1      // character
      IL_0001: call         bool [System.Runtime]System.Char::IsLetterOrDigit(char)
      IL_0006: brtrue.s     IL_001d
      IL_0008: ldsfld       char[] Test.PasswordChecker::SpecialCharacters
      IL_000d: call         class [System.Collections]System.Collections.Generic.List`1<!!0/*char*/> [System.Linq]System.Linq.Enumerable::ToList<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>)
      IL_0012: ldarg.1      // character
      IL_0013: callvirt     instance bool class [System.Collections]System.Collections.Generic.List`1<char>::Contains(!0/*char*/)
      IL_0018: ldc.i4.0
      IL_0019: ceq
      IL_001b: br.s         IL_001e
      IL_001d: ldc.i4.0
      IL_001e: ret

    } // end of method '<>c'::'<HasSufficientSpecialCharacters>b__7_0'
  } // end of class '<>c'

  .class nested private sealed auto ansi beforefieldinit
    '<>c__DisplayClass2_0'
      extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public string password
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
      IL_0006: nop
      IL_0007: ret

    } // end of method '<>c__DisplayClass2_0'::.ctor

    .method assembly hidebysig instance bool
      '<CheckPassword>b__0'(
        class [System.Runtime]System.Predicate`1<string> predicate
      ) cil managed
    {
      .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00
      .maxstack 8

      // [16 13 - 16 39]
      IL_0000: ldarg.1      // predicate
      IL_0001: ldarg.0      // this
      IL_0002: ldfld        string Test.PasswordChecker/'<>c__DisplayClass2_0'::password
      IL_0007: callvirt     instance bool class [System.Runtime]System.Predicate`1<string>::Invoke(!0/*string*/)
      IL_000c: ret

    } // end of method '<>c__DisplayClass2_0'::'<CheckPassword>b__0'
  } // end of class '<>c__DisplayClass2_0'

  .field private static initonly char[] SpecialCharacters

  .field private initonly class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Predicate`1<string>> _predicates

  .method public hidebysig instance valuetype Test.PasswordStrength
    CheckPassword(
      string password,
      class Test.User user
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] class Test.PasswordChecker/'<>c__DisplayClass2_0' 'CS$<>8__locals0',
      [1] valuetype Test.PasswordStrength V_1
    )

    IL_0000: newobj       instance void Test.PasswordChecker/'<>c__DisplayClass2_0'::.ctor()
    IL_0005: stloc.0      // 'CS$<>8__locals0'
    IL_0006: ldloc.0      // 'CS$<>8__locals0'
    IL_0007: ldarg.1      // password
    IL_0008: stfld        string Test.PasswordChecker/'<>c__DisplayClass2_0'::password

    // [14 71 - 14 72]
    IL_000d: nop

    // [15 9 - 16 87]
    IL_000e: ldarg.0      // this
    IL_000f: ldfld        class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Predicate`1<string>> Test.PasswordChecker::_predicates
    IL_0014: ldloc.0      // 'CS$<>8__locals0'
    IL_0015: ldftn        instance bool Test.PasswordChecker/'<>c__DisplayClass2_0'::'<CheckPassword>b__0'(class [System.Runtime]System.Predicate`1<string>)
    IL_001b: newobj       instance void class [System.Runtime]System.Func`2<class [System.Runtime]System.Predicate`1<string>, bool>::.ctor(object, native int)
    IL_0020: call         int32 [System.Linq]System.Linq.Enumerable::Count<class [System.Runtime]System.Predicate`1<string>>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*class [System.Runtime]System.Predicate`1<string>*/>, class [System.Runtime]System.Func`2<!!0/*class [System.Runtime]System.Predicate`1<string>*/, bool>)
    IL_0025: ldloc.0      // 'CS$<>8__locals0'
    IL_0026: ldfld        string Test.PasswordChecker/'<>c__DisplayClass2_0'::password
    IL_002b: ldarg.2      // user
    IL_002c: call         bool Test.PasswordChecker::HasNoTrivialData(string, class Test.User)
    IL_0031: brtrue.s     IL_0036
    IL_0033: ldc.i4.0
    IL_0034: br.s         IL_0037
    IL_0036: ldc.i4.1
    IL_0037: add
    IL_0038: call         valuetype Test.PasswordStrength Test.PasswordStrengthMethods::DeterminePasswordStrength(int32)
    IL_003d: stloc.1      // V_1
    IL_003e: br.s         IL_0040

    // [17 5 - 17 6]
    IL_0040: ldloc.1      // V_1
    IL_0041: ret

  } // end of method PasswordChecker::CheckPassword

  .method private hidebysig static bool
    HasSufficientCharacters(
      string password
    ) cil managed
  {
    .maxstack 8

    // [19 69 - 19 90]
    IL_0000: ldarg.0      // password
    IL_0001: callvirt     instance int32 [System.Runtime]System.String::get_Length()
    IL_0006: ldc.i4.s     16 // 0x10
    IL_0008: clt
    IL_000a: ldc.i4.0
    IL_000b: ceq
    IL_000d: ret

  } // end of method PasswordChecker::HasSufficientCharacters

  .method private hidebysig static bool
    HasSufficientLowerCaseCharacters(
      string password
    ) cil managed
  {
    .maxstack 8

    // [21 78 - 21 119]
    IL_0000: ldarg.0      // password
    IL_0001: ldnull
    IL_0002: ldftn        bool [System.Runtime]System.Char::IsUpper(char)
    IL_0008: newobj       instance void class [System.Runtime]System.Func`2<char, bool>::.ctor(object, native int)
    IL_000d: call         class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/> [System.Linq]System.Linq.Enumerable::Where<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>, class [System.Runtime]System.Func`2<!!0/*char*/, bool>)
    IL_0012: call         int32 [System.Linq]System.Linq.Enumerable::Count<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>)
    IL_0017: ldc.i4.3
    IL_0018: clt
    IL_001a: ldc.i4.0
    IL_001b: ceq
    IL_001d: ret

  } // end of method PasswordChecker::HasSufficientLowerCaseCharacters

  .method private hidebysig static bool
    HasSufficientUpperCaseCharacters(
      string password
    ) cil managed
  {
    .maxstack 8

    // [23 78 - 23 119]
    IL_0000: ldarg.0      // password
    IL_0001: ldnull
    IL_0002: ldftn        bool [System.Runtime]System.Char::IsUpper(char)
    IL_0008: newobj       instance void class [System.Runtime]System.Func`2<char, bool>::.ctor(object, native int)
    IL_000d: call         class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/> [System.Linq]System.Linq.Enumerable::Where<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>, class [System.Runtime]System.Func`2<!!0/*char*/, bool>)
    IL_0012: call         int32 [System.Linq]System.Linq.Enumerable::Count<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>)
    IL_0017: ldc.i4.2
    IL_0018: clt
    IL_001a: ldc.i4.0
    IL_001b: ceq
    IL_001d: ret

  } // end of method PasswordChecker::HasSufficientUpperCaseCharacters

  .method private hidebysig static bool
    HasSufficientNumericCharacters(
      string password
    ) cil managed
  {
    .maxstack 8

    // [25 76 - 25 117]
    IL_0000: ldarg.0      // password
    IL_0001: ldnull
    IL_0002: ldftn        bool [System.Runtime]System.Char::IsDigit(char)
    IL_0008: newobj       instance void class [System.Runtime]System.Func`2<char, bool>::.ctor(object, native int)
    IL_000d: call         class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/> [System.Linq]System.Linq.Enumerable::Where<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>, class [System.Runtime]System.Func`2<!!0/*char*/, bool>)
    IL_0012: call         int32 [System.Linq]System.Linq.Enumerable::Count<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>)
    IL_0017: ldc.i4.2
    IL_0018: clt
    IL_001a: ldc.i4.0
    IL_001b: ceq
    IL_001d: ret

  } // end of method PasswordChecker::HasSufficientNumericCharacters

  .method private hidebysig static bool
    HasSufficientSpecialCharacters(
      string password
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] class [System.Collections]System.Collections.Generic.List`1<char> illegalCharacters,
      [1] string toString,
      [2] bool V_2,
      [3] bool V_3
    )

    // [27 73 - 27 74]
    IL_0000: nop

    // [28 9 - 30 23]
    IL_0001: ldarg.0      // password
    IL_0002: ldsfld       class [System.Runtime]System.Func`2<char, bool> Test.PasswordChecker/'<>c'::'<>9__7_0'
    IL_0007: dup
    IL_0008: brtrue.s     IL_0021
    IL_000a: pop
    IL_000b: ldsfld       class Test.PasswordChecker/'<>c' Test.PasswordChecker/'<>c'::'<>9'
    IL_0010: ldftn        instance bool Test.PasswordChecker/'<>c'::'<HasSufficientSpecialCharacters>b__7_0'(char)
    IL_0016: newobj       instance void class [System.Runtime]System.Func`2<char, bool>::.ctor(object, native int)
    IL_001b: dup
    IL_001c: stsfld       class [System.Runtime]System.Func`2<char, bool> Test.PasswordChecker/'<>c'::'<>9__7_0'
    IL_0021: call         class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/> [System.Linq]System.Linq.Enumerable::Where<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>, class [System.Runtime]System.Func`2<!!0/*char*/, bool>)
    IL_0026: call         class [System.Collections]System.Collections.Generic.List`1<!!0/*char*/> [System.Linq]System.Linq.Enumerable::ToList<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>)
    IL_002b: stloc.0      // illegalCharacters

    // [32 9 - 32 38]
    IL_002c: ldloc.0      // illegalCharacters
    IL_002d: call         bool [System.Linq]System.Linq.Enumerable::Any<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>)
    IL_0032: ldc.i4.0
    IL_0033: ceq
    IL_0035: stloc.2      // V_2

    IL_0036: ldloc.2      // V_2
    IL_0037: brfalse.s    IL_0064

    // [32 39 - 32 40]
    IL_0039: nop

    // [33 13 - 33 85]
    IL_003a: ldarg.0      // password
    IL_003b: ldsfld       char[] Test.PasswordChecker::SpecialCharacters
    IL_0040: call         class [System.Collections]System.Collections.Generic.List`1<!!0/*char*/> [System.Linq]System.Linq.Enumerable::ToList<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>)
    IL_0045: dup
    IL_0046: ldvirtftn    instance bool class [System.Collections]System.Collections.Generic.List`1<char>::Contains(!0/*char*/)
    IL_004c: newobj       instance void class [System.Runtime]System.Func`2<char, bool>::.ctor(object, native int)
    IL_0051: call         class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/> [System.Linq]System.Linq.Enumerable::Where<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>, class [System.Runtime]System.Func`2<!!0/*char*/, bool>)
    IL_0056: call         int32 [System.Linq]System.Linq.Enumerable::Count<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>)
    IL_005b: ldc.i4.2
    IL_005c: clt
    IL_005e: ldc.i4.0
    IL_005f: ceq
    IL_0061: stloc.3      // V_3
    IL_0062: br.s         IL_0095

    // [36 9 - 36 73]
    IL_0064: ldstr        "["
    IL_0069: ldstr        ", "
    IL_006e: ldloc.0      // illegalCharacters
    IL_006f: call         string [System.Runtime]System.String::Join<char>(string, class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*char*/>)
    IL_0074: ldstr        "]"
    IL_0079: call         string [System.Runtime]System.String::Concat(string, string, string)
    IL_007e: stloc.1      // toString

    // [37 9 - 37 99]
    IL_007f: ldstr        "ERROR: Password contains illegal character(s) "
    IL_0084: ldloc.1      // toString
    IL_0085: ldstr        "!"
    IL_008a: call         string [System.Runtime]System.String::Concat(string, string, string)
    IL_008f: newobj       instance void [System.Runtime]System.ArgumentException::.ctor(string)
    IL_0094: throw

    // [38 5 - 38 6]
    IL_0095: ldloc.3      // V_3
    IL_0096: ret

  } // end of method PasswordChecker::HasSufficientSpecialCharacters

  .method private hidebysig static bool
    HasNoTrivialData(
      string password,
      class Test.User user
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] valuetype [System.Runtime]System.DateTime V_0,
      [1] int32 V_1,
      [2] bool V_2
    )

    // [40 70 - 40 71]
    IL_0000: nop

    // [41 9 - 45 71]
    IL_0001: ldarg.0      // password
    IL_0002: ldarg.1      // user
    IL_0003: callvirt     instance string Test.User::get_FirstName()
    IL_0008: callvirt     instance bool [System.Runtime]System.String::Contains(string)
    IL_000d: brtrue.s     IL_0077
    IL_000f: ldarg.0      // password
    IL_0010: ldarg.1      // user
    IL_0011: callvirt     instance string Test.User::get_LastName()
    IL_0016: callvirt     instance bool [System.Runtime]System.String::Contains(string)
    IL_001b: brtrue.s     IL_0077
    IL_001d: ldarg.0      // password
    IL_001e: ldarg.1      // user
    IL_001f: callvirt     instance valuetype [System.Runtime]System.DateTime Test.User::get_DateOfBirth()
    IL_0024: stloc.0      // V_0
    IL_0025: ldloca.s     V_0
    IL_0027: call         instance int32 [System.Runtime]System.DateTime::get_Day()
    IL_002c: stloc.1      // V_1
    IL_002d: ldloca.s     V_1
    IL_002f: call         instance string [System.Runtime]System.Int32::ToString()
    IL_0034: callvirt     instance bool [System.Runtime]System.String::Contains(string)
    IL_0039: brtrue.s     IL_0077
    IL_003b: ldarg.0      // password
    IL_003c: ldarg.1      // user
    IL_003d: callvirt     instance valuetype [System.Runtime]System.DateTime Test.User::get_DateOfBirth()
    IL_0042: stloc.0      // V_0
    IL_0043: ldloca.s     V_0
    IL_0045: call         instance int32 [System.Runtime]System.DateTime::get_Month()
    IL_004a: stloc.1      // V_1
    IL_004b: ldloca.s     V_1
    IL_004d: call         instance string [System.Runtime]System.Int32::ToString()
    IL_0052: callvirt     instance bool [System.Runtime]System.String::Contains(string)
    IL_0057: brtrue.s     IL_0077
    IL_0059: ldarg.0      // password
    IL_005a: ldarg.1      // user
    IL_005b: callvirt     instance valuetype [System.Runtime]System.DateTime Test.User::get_DateOfBirth()
    IL_0060: stloc.0      // V_0
    IL_0061: ldloca.s     V_0
    IL_0063: call         instance int32 [System.Runtime]System.DateTime::get_Year()
    IL_0068: stloc.1      // V_1
    IL_0069: ldloca.s     V_1
    IL_006b: call         instance string [System.Runtime]System.Int32::ToString()
    IL_0070: callvirt     instance bool [System.Runtime]System.String::Contains(string)
    IL_0075: br.s         IL_0078
    IL_0077: ldc.i4.1
    IL_0078: stloc.2      // V_2
    IL_0079: br.s         IL_007b

    // [46 5 - 46 6]
    IL_007b: ldloc.2      // V_2
    IL_007c: ret

  } // end of method PasswordChecker::HasNoTrivialData

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 4
    .locals init (
      [0] class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Predicate`1<string>> V_0
    )

    // [6 5 - 12 7]
    IL_0000: ldarg.0      // this
    IL_0001: newobj       instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Predicate`1<string>>::.ctor()
    IL_0006: stloc.0      // V_0
    IL_0007: ldloc.0      // V_0
    IL_0008: ldnull
    IL_0009: ldftn        bool Test.PasswordChecker::HasSufficientCharacters(string)
    IL_000f: newobj       instance void class [System.Runtime]System.Predicate`1<string>::.ctor(object, native int)
    IL_0014: callvirt     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Predicate`1<string>>::Add(!0/*class [System.Runtime]System.Predicate`1<string>*/)
    IL_0019: nop
    IL_001a: ldloc.0      // V_0
    IL_001b: ldnull
    IL_001c: ldftn        bool Test.PasswordChecker::HasSufficientLowerCaseCharacters(string)
    IL_0022: newobj       instance void class [System.Runtime]System.Predicate`1<string>::.ctor(object, native int)
    IL_0027: callvirt     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Predicate`1<string>>::Add(!0/*class [System.Runtime]System.Predicate`1<string>*/)
    IL_002c: nop
    IL_002d: ldloc.0      // V_0
    IL_002e: ldnull
    IL_002f: ldftn        bool Test.PasswordChecker::HasSufficientUpperCaseCharacters(string)
    IL_0035: newobj       instance void class [System.Runtime]System.Predicate`1<string>::.ctor(object, native int)
    IL_003a: callvirt     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Predicate`1<string>>::Add(!0/*class [System.Runtime]System.Predicate`1<string>*/)
    IL_003f: nop
    IL_0040: ldloc.0      // V_0
    IL_0041: ldnull
    IL_0042: ldftn        bool Test.PasswordChecker::HasSufficientNumericCharacters(string)
    IL_0048: newobj       instance void class [System.Runtime]System.Predicate`1<string>::.ctor(object, native int)
    IL_004d: callvirt     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Predicate`1<string>>::Add(!0/*class [System.Runtime]System.Predicate`1<string>*/)
    IL_0052: nop
    IL_0053: ldloc.0      // V_0
    IL_0054: ldnull
    IL_0055: ldftn        bool Test.PasswordChecker::HasSufficientSpecialCharacters(string)
    IL_005b: newobj       instance void class [System.Runtime]System.Predicate`1<string>::.ctor(object, native int)
    IL_0060: callvirt     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Predicate`1<string>>::Add(!0/*class [System.Runtime]System.Predicate`1<string>*/)
    IL_0065: nop
    IL_0066: ldloc.0      // V_0
    IL_0067: stfld        class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Predicate`1<string>> Test.PasswordChecker::_predicates
    IL_006c: ldarg.0      // this
    IL_006d: call         instance void [System.Runtime]System.Object::.ctor()
    IL_0072: nop
    IL_0073: ret

  } // end of method PasswordChecker::.ctor

  .method private hidebysig static specialname rtspecialname void
    .cctor() cil managed
  {
    .maxstack 8

    // [4 5 - 4 104]
    IL_0000: ldc.i4.s     9 // 0x09
    IL_0002: newarr       [System.Runtime]System.Char
    IL_0007: dup
    IL_0008: ldtoken      field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'43E78435E574D71D2B6D4CFC0C551FD1F717E18F7FA7786D8E0B196EF7117A78'
    IL_000d: call         void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array, valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0012: stsfld       char[] Test.PasswordChecker::SpecialCharacters
    IL_0017: ret

  } // end of method PasswordChecker::.cctor
} // end of class Test.PasswordChecker
