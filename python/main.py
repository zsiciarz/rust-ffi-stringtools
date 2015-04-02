import ctypes

stringtools = ctypes.CDLL("../target/debug/libstringtools-4149b7695a4035ac.so")
print(stringtools.count_substrings(b"banana", b"na"))
