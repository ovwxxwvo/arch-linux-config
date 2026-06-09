-- NVIM config,


local actions = {

  object_add_quote = { act = 'd"p"', desc = '', },
  object_del_quote = { act = 'dpXX', desc = '', },

}

local mode    = { 'o' }
for _, v in pairs(actions) do
  v.mode = mode
  v.noremap = true
end

return actions
