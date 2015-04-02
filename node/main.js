var ffi = require('ffi');

var stringtools = ffi.Library('../target/debug/libstringtools-4149b7695a4035ac.so', {
      'count_substrings': ['int', ['string', 'string']]
});

console.log(stringtools.count_substrings("banana", "na"));
