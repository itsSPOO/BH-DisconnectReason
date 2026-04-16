fx_version('cerulean')

games({ 'gta5' })

author 'SPOO'
description 'A utility to cleanly format player disconnect messages.'

shared_scripts({
    'config.lua',
})

server_scripts({
    'server/**.lua',
});

client_scripts({
    'client/**.lua',
});