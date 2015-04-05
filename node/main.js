var ffi = require('ffi');
var glob = require('glob');

var library_name = glob.sync('../target/debug/libstringtools-*.so')[0];
if (!library_name) {
    console.log("Couldn\'t find dynamic library");
    process.exit(1);
}

var stringtools = ffi.Library(library_name, {
      'count_substrings': ['int', ['string', 'string']]
});

console.log(stringtools.count_substrings("banana", "na"));
