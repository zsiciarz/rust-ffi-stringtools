import ctypes
import glob
import sys

try:
    library_name = glob.glob("../target/debug/libstringtools-*.so")[0]
except IndexError:
    print("Couldn't find dynamic library")
    sys.exit(1)
else:
    stringtools = ctypes.CDLL(library_name)
    print(stringtools.count_substrings(b"banana", b"na"))
