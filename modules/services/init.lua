-- init serveices
modules.services = {}

require "modules.services.addons" -- load the addons service
require "modules.services.loop" -- load the loops service
require "modules.services.commands" -- load the commands service
require "modules.services.vehicles" -- load the vehicles service
require "modules.services.player" -- load the player service