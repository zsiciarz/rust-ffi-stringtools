extern crate libc;

use std::c_str::CString;
use libc::c_char;

#[no_mangle]
pub extern fn count_substrings(value: *const c_char, substr: *const c_char) -> i32 {
    let c_value = unsafe { CString::new(value, false) };
    let c_substr = unsafe { CString::new(substr, false) };
    match c_value.as_str() {
        Some(value) => match c_substr.as_str() {
            Some(substr) => value.match_indices(substr).count() as i32,
            None => -1,
        },
        None => -1,
    }
}
