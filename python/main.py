import ctypes

stringtools = ctypes.CDLL("../target/libstringtools-261cf0fc14ce408c.so")
print(stringtools.count_substrings(b"banana", b"na"))
