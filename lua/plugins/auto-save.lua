return {
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {
        enabled = true,
        execution_message = {
          message = function() return "" end, -- biar gak spam notif
        },
        events = { "InsertLeave" }, -- save otomatis saat keluar dari insert mode
        conditions = {
          exists = true,
          modifiable = true,
        },
        write_all_buffers = false,
        debounce_delay = 250, -- jeda 0.25 detik biar halus
      }
    end,
  },
}
