s = "\x00\x11\x01\xd8\xac\x9c\xdf\xd7^\xdaA\xff\xff\xff\xff\x04\b{\x06I\"\x0cmessage\x06:\x06EFI\"\nhello\x06;\x00T".b
sig = s[0,2] # => "\x00\x11"
type, expires_at, version_len = s.byteslice(2, 13).unpack("CEl>")
offset = 2 + 13
version = (version_len >= 0) ? s.byteslice(offset, version_len) : nil
offset += (version_len >= 0 ? version_len : 0)
payload = s.byteslice(offset, s.bytesize - offset)
puts Marshal.load(payload)