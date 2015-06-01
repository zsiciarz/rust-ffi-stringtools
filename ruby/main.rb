require 'ffi'

module StringTools
  extend FFI::Library
  ffi_lib "../target/debug/libstringtools.so"
  attach_function :count_substrings, [:string, :string], :int
end

puts StringTools.count_substrings("banana", "na")
