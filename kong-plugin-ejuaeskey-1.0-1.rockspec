package = "kong-plugin-ejuaeskey"
version = "1.0-1"
source = {
   url = "git://github.com/nixuw/ejuaeskey",
   tag = "1.0",
}
description = {
   summary = "AES key",
   detailed = [[
      AES key.
   ]],
   homepage = "https://github.com/nixuw",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.ejuaeskey.handler"] = "kong/plugins/ejuaeskey/handler.lua",
      ["kong.plugins.ejuaeskey.schema"] = "kong/plugins/ejuaeskey/schema.lua"
     },

   }

