-- init library table
modules.libraries = {} -- table of library functions

require "modules.libraries.logging" -- load the loging library
require "modules.libraries.chat" -- load the chat library
require "modules.libraries.events" -- load the events library
require "modules.libraries.callbacks" -- load the callbacks library
require "modules.libraries.commands" -- load the commands library
require "modules.libraries.gsave" -- load the gsave library