# Package

version       = "1.0.0"
author        = "Akito"
description   = "Cringifies text input and copies the output to clipboard."
license       = "GPL-3.0-or-later"
srcDir        = "src"
bin           = @["cringify_text", "cringify_text.exe"]


# Dependencies

requires "nim      >= 2.0.0"
requires "sdl2_nim >= 2.0.14.3"