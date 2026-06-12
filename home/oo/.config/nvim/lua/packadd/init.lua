-- NVIM config,


M = {}

M.setup = function(packs)
  packs = packs or require("pack")
  local urls = {}

  for _, p in ipairs(packs) do
    local repo = p[1]
    local url = "https://github.com/" .. repo
    -- vim.schedule(function() vim.pack.add({url}) end)
    table.insert(urls, url)
  end

  vim.pack.add(urls)
end

-- M.setup()
return M
