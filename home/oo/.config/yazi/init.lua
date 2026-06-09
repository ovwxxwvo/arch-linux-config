-- YAZY config,


local config = os.getenv("HOME").."/.config/yazi/config/"


require("session"  ):setup(dofile(config.."session.lua"  ))
require("uipatcher"):setup(dofile(config.."uipatcher.lua"))
-- require("git"      ):setup()


-- require("mpviewer" )
-- require("folder-rules"):setup()


