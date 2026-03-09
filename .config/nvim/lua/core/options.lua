local opt = vim.opt



opt.expandtab = true -- Преобразовать табы в пробелы
opt.smarttab = true -- Умная вставка табов
opt.smartindent = true -- Автоматические отступы
opt.tabstop = 4 -- Какой ширины выглядит символ таба в файле
opt.softtabstop = 4 -- На сколько колонок двигает/удаляет Tab и Backspace
opt.shiftwidth = 4 -- Размер отступа для >> и <<


opt.number = true -- Показывать номера строк
opt.numberwidth = 2 -- Ширина колонки с номерами
opt.fillchars = { eob = " " } -- Убрать символ ~ в конце буфера (визуальный мусор)
opt.relativenumber = true

opt.ignorecase = true -- Игнорировать регистр при поиске
opt.smartcase = true -- Но учитывать, если в запросе есть заглавные буквы

opt.termguicolors = true -- Поддержка 24-bit цветов
opt.mouse = "a" -- Включить мышь во всех режимах
opt.wrap = true -- Автоматический перенос длинных строк

opt.undofile = true -- Сохранять историю отмен между сессиями
opt.swapfile = false -- Отключить swap-файлы (они раздражают)
opt.fileencoding = "utf-8" -- Кодировка файлов
opt.clipboard = "unnamedplus" -- Использовать системный буфер обмена

opt.timeoutlen = 400 -- Время ожидания комбинаций клавиш (мс)


