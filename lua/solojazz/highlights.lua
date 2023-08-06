local c = require('solojazz.colors').colors

local M = {}

function M.setup()
  local highligths = {
    ColorColumn = { bg = c.azure },
    Conceal = { fg = c.white, bg = c.green },
    CurSearch = { fg = c.purple, bg = c.honeydew, bold = true },
    Cursor = { fg = c.white, bg = c.teal_1 },
    lCursor = { fg = c.white, bg = c.teal_1 },
    CursorIM = { fg = c.white, bg = c.teal_1 },
    CursorColumn = { bg = c.azure },
    CursorLine = { bg = c.azure },
    Directory = { fg = c.blue },
    diffFile = { fg = c.teal_1 },
    gitDiff = { fg = c.purple },
    diffIndexLine = { fg = c.blue_1 },
    diffOldFile = { fg = c.black, bg = c.diff_removed_highlight },
    diffNewFile = { fg = c.black, bg = c.diff_added_highlight },
    diffLine = { fg = c.slate },
    DiffAdd = { fg = c.black, bg = c.diff_added_highlight },
    diffAdded = { fg = c.black, bg = c.diff_added_highlight },
    DiffChange = { fg = c.black, bg = c.diff_changed_highlight },
    diffChanged = { fg = c.black, bg = c.diff_changed_highlight },
    DiffDelete = { fg = c.black, bg = c.diff_removed_highlight },
    diffRemoved = { fg = c.black, bg = c.diff_removed_highlight },
    --DiffText = { bg = c. },
    EndOfBuffer = { fg = c.slate },
    TermCursor = { fg = c.white, bg = c.teal_1 },
    TermCursorNC = { fg = c.none, bg = c.none },
    ErrorMsg = { fg = c.red, bold = true },
    WinSeparator = { fg = c.teal_1 },
    FloatBorder = { fg = c.teal_1 },
    Folded = { bg = c.lavender },
    FoldColumn = { bg = c.white },
    SignColumn = { bg = c.white },
    IncSearch = { fg = c.purple, bg = c.honeydew, bold = true },
    Substitute = { fg = c.red, underline = true },
    LineNr = { fg = c.slate },
    --LineNrAbove
    --LineNrBelow
    CursorLineNr = { fg = c.teal_1, bold = true },
    --CursorLineSign
    --CursorLineFold
    MatchParen = { fg = c.teal_1, bg = c.honeydew },
    ModeMsg = { fg = c.teal_1, bold = true },
    --MsgArea
    --MsgSeparator
    MoreMsg = { fg = c.green, bold = true },
    NonText = { fg = c.slate },
    Normal = { fg = c.purple, bg = c.white },
    NormalFloat = { bg = c.white_2 },
    --NormalNC
    Pmenu = { fg = c.teal_1, bg = c.white },
    --PmenuSel = { fg = c.white_2, bg = c.teal_1 },
    PmenuSel = { bg = c.white_2 },
    PmenuSbar = { fg = c.teal_1, bg = c.white_2 },
    PmenuThumb = { fg = c.teal_1, bg = c.teal_1 },
    --Question
    --QuickFixLine
    Search = { fg = c.purple, bg = c.rose, bold = true },
    SpecialKey = { fg = c.pink },
    --SpellBad
    --SpellCap
    --SpellLocal
    --SpellRare
    StatusLine = { bg = c.white_2 },
    StatusLineNC = { fg = c.slate, bg = c.white_2 },
    TabLine = { fg = c.slate, bg = c.white_2 },
    TabLineFill = { bg = c.white },
    TabLineSel = { fg = c.white, bg = c.teal_1 },
    Title = { fg = c.blue_1, bold = true },
    Visual = { bg = c.lavender },
    --VisualNOS
    --WarningMsg
    --Whitespace
    --WildMenu
    --WinBar
    --WinBarNC
    VertSplit = { fg = c.slate },
    healthError = { fg = c.red, bold = true },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.orange },
    helpNote = { fg = c.white, bg = c.teal_1 },
    Comment = { fg = c.slate, italic = true },
    String = { fg = c.blue_1 },
    Character = { fg = c.blue_1 },
    Number = { fg = c.orange },
    Boolean = { fg = c.teal, bold = true },
    Float = { fg = c.blue },
    Identifier = { fg = c.teal },
    Constant = { fg = c.orange },
    Function = { fg = c.pink },
    Statement = { fg = c.teal, bold = true },

    --Conditional = { fg = c.blue_1, bold = true },
    Conditional = { fg = c.teal, bold = true },
    Repeat = { fg = c.teal, bold = true },
    Label = { fg = c.teal },
    Operator = { fg = c.teal },

    PreProc = { fg = c.teal },
    Type = { fg = c.teal },
    Special = { fg = c.teal_1 },
    SpecialChar = { fg = c.purple },
    Error = { fg = c.red, bold = true },
    cssBraces = { fg = c.purple },

    helpSectionDelim = { bold = true },

    -- Treesitter
    --['@constant'] = { fg = c.orange },
    --['@parameter'] = { fg = c.orange },
    ['@constant'] = { fg = c.blue },
    ['@constant.builtin'] = { fg = c.teal },
    ['@constructor'] = { fg = c.purple },
    ['@field'] = { fg = c.blue },
    ['@function.builtin'] = { fg = c.blue_1, italic = true },
    ['@function.call'] = { fg = c.blue_1, italic = true },
    ['@parameter'] = { fg = c.blue },
    ['@property'] = { fg = c.blue, italic = true },
    ['@punctuation.bracket'] = { fg = c.purple },
    ['@punctuation.delimiter'] = { fg = c.purple },
    ['@punctuation.special'] = { fg = c.teal_1 },
    ['@punctuation.special.markdown'] = { fg = c.blue_1 },
    ['@text.emphasis'] = { fg = c.blue_1, italic = true },
    ['@text.reference.markdown_inline'] = { fg = c.blue_1, bold = true },
    ['@text.strong'] = { fg = c.teal_1, bold = true },
    ['@text.title'] = { fg = c.teal_1, bold = true },
    -- ['@text.title.1.marker.markdown'] = { fg = c.teal_1 },
    -- ['@text.title.2.marker.markdown'] = { fg = c.teal_1 },
    -- ['@text.title.3.marker.markdown'] = { fg = c.teal_1 },
    -- ['@text.title.4.marker.markdown'] = { fg = c.teal_1 },
    -- ['@text.title.5.marker.markdown'] = { fg = c.teal_1 },
    -- ['@text.title.6.marker.markdown'] = { fg = c.teal_1 },
    ['@text.title.markdown'] = { fg = c.teal, bold = true },
    ['@text.todo.checked'] = { fg = c.teal },
    ['@text.todo.unchecked'] = { fg = c.teal },
    ['@text.uri'] = { fg = c.blue_1, underline = true },
    ['@type'] = { fg = c.blue },
    ['@type.builtin'] = { fg = c.teal },
    ['@variable'] = { fg = c.orange },
    ['@variable.builtin'] = { fg = c.pink },

    -- Semantic tokens
    ['@lsp.type.function'] = { fg = c.blue_1 },
    ['@lsp.type.method'] = { fg = c.blue },
    ['@lsp.type.parameter'] = { fg = c.orange },
    ['@lsp.type.property'] = { fg = c.blue },
    ['@lsp.type.variable'] = { fg = c.purple },
    ['@lsp.type.class'] = { fg = c.blue },

    -- Nvim Tree
    NvimTreeFolderIcon = { fg = c.teal_1 },
    NvimTreeFolderName = { fg = c.blue },
    NvimTreeRootFolder = { fg = c.teal_1, bold = true },
    NvimTreeExecFile = { fg = c.green, bold = true, underline = true },
    NvimTreeSpecialFile = { fg = c.pink, underline = true },

    -- Diagnostic
    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = c.orange },
    DiagnosticInfo = { fg = c.teal }, -- this is probably bad
    DiagnosticHint = { fg = c.blue_1 },
    DiagnosticUnderlineWarn = { fg = c.orange, underline = true },
    DiagnosticUnderlineError = { fg = c.red, underline = true },
    DiagnosticUnderlineInfo = { fg = c.teal, underline = true }, -- and this is too
    DiagnosticUnderlineHint = { fg = c.blue_1, underline = true },

    -- Cmp
    CmpItemAbbr = { fg = c.purple },
    CmpItemAbbrMatch = { fg = c.teal_1 },
    CmpItemAbbrMatchFuzzy = { fg = c.teal_1 },
    CmpItemKind = { fg = c.pink },
    -- CmpItemAbbrMatch = { fg = c.pink },
    -- CmpItemAbbrMatchFuzzy = { fg = c.pink },
    -- CmpItemKind = { fg = c.teal_1 },
    CmpItemKindVariable = { fg = c.purple },
    CmpItemKindConstant = { fg = c.orange },
    CmpItemKindFunction = { fg = c.blue_1 },
    CmpItemKindMethod = { fg = c.teal },
    CmpItemKindSnippet = { fg = c.green },

    -- Telescope
    TelescopeNormal = { fg = c.purple, bg = c.white },
    TelescopeBorder = { fg = c.teal_1, bg = c.white },
    --TelescopeMatching = { fg = c.teal_1 },
    TelescopePromptCounter = { fg = c.blue_1, bg = c.azure, bold = true },

    -- LSP
    LspCodeLens = { bg = c.white_2 },

    -- Indentblankline
    IndentBlanklineChar = { fg = c.grey },
    IndentBlanklineContextChar = { fg = c.teal_1 },
    IndentBlanklineContextStart = { bg = c.azure },

    -- Lazy
    LazyH1 = { fg = c.white, bg = c.teal_1, bold = true },
    LazyH2 = { fg = c.pink }
  }

  -- Terminal colors
  vim.g.terminal_color_0 = c.black
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.orange
  vim.g.terminal_color_4 = c.blue_1
  vim.g.terminal_color_5 = c.purple_1
  vim.g.terminal_color_6 = c.teal
  vim.g.terminal_color_7 = c.slate
  vim.g.terminal_color_8 = c.slate
  vim.g.terminal_color_9 = c.red
  vim.g.terminal_color_10 = c.green
  vim.g.terminal_color_11 = c.orange
  vim.g.terminal_color_12 = c.blue
  vim.g.terminal_color_13 = c.violet
  vim.g.terminal_color_14 = c.teal_1
  vim.g.terminal_color_15 = c.slate

  -- Apply cursor highlights
  vim.cmd([[set guicursor=n-v-c:block-Cursor,i-ci-ve:ver100-Cursor,r-cr:hor20,o:hor50-Cursor,sm:block-Cursor]])


  return highligths
end

return M
