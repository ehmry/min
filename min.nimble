version       = "0.43.0"
author        = "Fabio Cevasco"
description   = "A small but practical concatenative programming language and shell."
license       = "MIT"
bin           = @["min"]
installExt    = @["nim", "c", "h", "a"]
installFiles  = @["min.yml", "min.nim", "prelude.min", "help.json"]
installDirs   = @["minpkg"]

# Dependencies

requires "nim >= 2.0.0 & < 3.0.0"
requires "checksums"
requires "zippy >= 0.5.6 & < 0.6.0" 
requires "nimquery >= 2.0.1 & < 3.0.0" 
requires "minline >= 0.1.1 & < 0.2.0"
