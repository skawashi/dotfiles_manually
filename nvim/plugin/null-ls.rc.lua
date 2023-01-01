local status, null_ls = pcall(require, 'null-ls')
if (not status) then return end

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.phpstan,
        null_ls.builtins.formatting.phpcsfixer,
        null_ls.builtins.formatting.blade_formatter,
        -- null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.vint,
    },
})

