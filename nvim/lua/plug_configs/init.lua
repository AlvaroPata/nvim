local plugin_config_root = 'plug_configs.'
local plugin_config_files = vim.fn.globpath('lua/plug_configs', '*.lua')

for plugin_name in plugin_config_files:gmatch('([%w%d-_]+).lua') do
  if plugin_name ~= 'init' then
    require(plugin_config_root .. plugin_name)
  end
end
