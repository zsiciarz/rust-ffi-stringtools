var ffi = require('ffi');

var library_name = '../target/debug/libstringtools.so';
var stringtools = ffi.Library(library_name, {
      'count_substrings': ['int', ['string', 'string']]
});

console.log(stringtools.count_substrings("bąnana", "na"));
