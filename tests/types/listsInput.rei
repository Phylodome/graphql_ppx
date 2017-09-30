module MyQuery: {
  let make:
    arg::
      Js.t {
        ..
        nullableOfNullable : option (array (option string)),
        nullableOfNonNullable : option (array string),
        nonNullableOfNullable : array (option string),
        nonNullableOfNonNullable : array string
      } =>
    unit =>
    Js.t {
      .
      parse : Js.Json.t => Js.t {. listsInput : string}, query : string, variables : Js.Json.t
    };
};