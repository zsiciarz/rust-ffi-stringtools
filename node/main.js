var ffi = require('ffi');

var stringtools = ffi.Library('../target/libstringtools-261cf0fc14ce408c.so', {
      'count_substrings': ['int', ['string', 'string']]
});

console.log(stringtools.count_substrings("banana", "na"));
