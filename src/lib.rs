extern crate libc;

use std::ffi::CStr;
use std::str;
use libc::c_char;

#[no_mangle]
pub extern "C" fn count_substrings(value: *const c_char, substr: *const c_char) -> i32 {
    let c_value = unsafe { CStr::from_ptr(value).to_bytes() };
    let c_substr = unsafe { CStr::from_ptr(substr).to_bytes() };
    match str::from_utf8(c_value) {
        Ok(value) => match str::from_utf8(c_substr) {
            Ok(substr) => rust_substrings(value, substr),
            Err(_) => -1,
        },
        Err(_) => -1,
    }
}

fn rust_substrings(value: &str, substr: &str) -> i32 {
    value.matches(substr).count() as i32
}
