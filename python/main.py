import ctypes

library_name = "../target/debug/libstringtools.so"
stringtools = ctypes.CDLL(library_name)
print(stringtools.count_substrings(b"banana", b"na"))
