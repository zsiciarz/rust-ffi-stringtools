{-# LANGUAGE ForeignFunctionInterface #-}

import Foreign.C.String (CString, newCString)

foreign import ccall "count_substrings"
    count_substrings :: CString -> CString -> IO Int

main :: IO ()
main = do
    value <- newCString "banana"
    haystack <- newCString "na"
    count_substrings value haystack >>= print
