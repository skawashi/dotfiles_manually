local status, numbers = pcall(require, 'numbers')
if (not status) then return end

numbers.setup({})
