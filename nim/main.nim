proc count_substrings(value: cstring, substr: cstring): cint
    {.cdecl, importc, dynlib: "../target/debug/libstringtools.so".}

echo(count_substrings("bąnana", "na"))
