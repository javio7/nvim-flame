-- ######################################################
-- # Maintainer: Mr. Charkuils                          #
-- # URL:        https://github.com/charkuils/nvim-fuel #
-- ######################################################

local util = require'fuel.util'

return {
    build = function (file_with_extension, file)
        local path = vim.fn.expand("%:h")
        local path_w_file = path .. "/" .. file

        return string.format(" rustc --out-dir %s %s; %s;rm -f %s", path, file_with_extension, path_w_file, path_w_file)
    end,
    get_statusline = function(file)
        return util.statusline_style(" Rust", file)
    end
}