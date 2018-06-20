/\[-- Type: text.* --\]/d
/\[-- Autoview.* --\]/d
/\[-- Type.* --\]/d
/\[-- .*unsupported.* --\]/d
/\[-- Attachment #[0-9] --\]/d
s/Attachment #[0-9]: //g
#'/References/,$d'
/./,/^$/!d
