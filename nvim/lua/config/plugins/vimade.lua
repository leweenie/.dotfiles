return {
  { {
    'tadaa/vimade',
    opts = {
      recipe = { 'default', { animate = false } },
      ncmode = 'buffers', -- use 'windows' to fade inactive windows
      fadelevel = 0.4,    -- any value between 0 and 1. 0 is hidden and 1 is opaque.
      tint = {
      },
      basebg = '',
      blocklist = {
        default = {
          highlights = {
            laststatus_3 = function(win, active)
              if vim.go.laststatus == 3 then
                return 'StatusLine'
              end
            end,
          },
          buf_opts = { buftype = { 'prompt' } },
          win_config = { relative = true },
        },
      },
      link = {},
      groupdiff = true,        -- links diffs so that they style together
      groupscrollbind = false, -- link scrollbound windows so that they style together.
      enablefocusfading = false,
      checkinterval = 1000,
      usecursorhold = false,
      nohlcheck = true,
    }
  } }
}
