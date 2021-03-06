package = "yae"
version = "dev-1"

source = {
  url = "git://github.com/nondev/yae.git",
}

description = {
  summary = "Game engine for MoonScript, in MoonScript.",
  homepage = "https://yae.io",
  maintainer = "Tomas Slusny <slusnucky@gmail.com>",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "moonscript"
}

build = {
  type = "command",

  install = {
    bin = { "bin/yae" }
  },

  platforms = {
    unix = {
      build_command = "sh build"
    },
    windows = {
      build_command = "build"
    }
  },

  copy_directories = { "core", "res", "src" }
}
