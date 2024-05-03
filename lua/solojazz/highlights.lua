local c = require('solojazz.colors').colors

local M = {}

function M.setup()
  local highlights = {
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
    gitSignsAdd = { fg = c.green },
    gitSignsChange = { fg = c.orange },
    gitSignsDelete = { fg = c.red },
    --DiffText = { bg = c. },
    EndOfBuffer = { fg = c.slate },
    TermCursor = { fg = c.white, bg = c.teal_1 },
    TermCursorNC = { fg = c.none, bg = c.none },
    ErrorMsg = { fg = c.red, bold = true },
    WinSeparator = { fg = c.slate },
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
    Pmenu = { fg = c.teal_1, bg = c.white_1 },
    --PmenuSel = { fg = c.white_2, bg = c.teal_1 },
    PmenuSel = { bg = c.azure },
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
    -- Number = { fg = c.orange },
    Number = { fg = c.blue },
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
    SpecialChar = { fg = c.blue },
    Error = { fg = c.red, bold = true },
    cssBraces = { fg = c.purple },

    helpSectionDelim = { bold = true },

    -- Man
    manReference = { fg = c.blue_1, underline = true },

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
    ['@text.emphasis'] = { fg = c.blue_1, italic = true },
    ['@text.reference.markdown_inline'] = { fg = c.blue_1, bold = true },
    ['@text.strong'] = { fg = c.teal_1, bold = true },
    ['@text.title'] = { fg = c.teal_1, bold = true },
    ['@text.title.markdown'] = { fg = c.teal, bold = true },
    ['@text.todo.checked'] = { fg = c.teal },
    ['@text.todo.unchecked'] = { fg = c.teal },
    ['@text.uri'] = { fg = c.blue_1, underline = true },
    ['@type'] = { fg = c.blue },
    ['@type.builtin'] = { fg = c.blue },
    ['@variable'] = { fg = c.orange },
    ['@variable.builtin'] = { fg = c.pink },

    -- Markdown
    ['@markup'] = { fg = c.teal },
    ['@markup.heading.1.markdown'] = { fg = c.teal, bold = true },
    ['@markup.heading.1.marker.markdown'] = { fg = c.teal, bold = true },
    ['@markup.heading.1.vimdoc'] = { fg = c.teal_1, bold = true },
    ['@markup.heading.2.markdown'] = { fg = c.teal, bold = true },
    ['@markup.heading.2.marker.markdown'] = { fg = c.teal, bold = true },
    ['@markup.heading.3.markdown'] = { fg = c.teal, bold = true },
    ['@markup.heading.3.marker.markdown'] = { fg = c.teal, bold = true },
    ['@markup.heading.4.markdown'] = { fg = c.teal, bold = true },
    ['@markup.heading.4.marker.markdown'] = { fg = c.teal, bold = true },
    ['@markup.heading.5.markdown'] = { fg = c.teal, bold = true },
    ['@markup.heading.5.marker.markdown'] = { fg = c.teal, bold = true },
    ['@markup.heading.6.markdown'] = { fg = c.teal, bold = true },
    ['@markup.heading.6.marker.markdown'] = { fg = c.teal, bold = true },
    ['@markup.link.vimdoc'] = { fg = c.pink },
    ['@markup.list.checked.markdown'] = { fg = c.teal },
    ['@punctuation.special.markdown'] = { fg = c.blue_1 },

    -- Semantic tokens
    ['@lsp.type.function'] = { fg = c.blue_1 },
    ['@lsp.type.method'] = { fg = c.blue },
    ['@lsp.type.parameter'] = { fg = c.orange },
    ['@lsp.type.property'] = { fg = c.blue },
    ['@lsp.type.variable'] = { fg = c.purple },
    ['@lsp.type.class'] = { fg = c.blue },
    ['@lsp.typemod.function.declaration'] = { fg = c.pink },
    ['@lsp.typemod.parameter.declaration'] = { fg = c.orange },
    ['@lsp.mod.declaration'] = { fg = c.orange },
    ['@lsp.typemod.macro.globalScope.c'] = { fg = c.teal },
    ['@lsp.typemod.class.declaration'] = { fg = c.blue },

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
    IblChar = { fg = c.grey },
    IblScope = { bg = c.azure },

    -- Lazy
    LazyH1 = { fg = c.white, bg = c.teal_1, bold = true },
    LazyH2 = { fg = c.pink },
    LazyDimmed = { bg = c.azure },

    -- Mason
    MasonHeader = { fg = c.teal_1 },
    MasonHeaderSecondary = { fg = c.teal_1 },
    MasonHeading = { fg = c.pink },
    MasonHighlightBlockBold = { fg = c.white, bg = c.teal_1 },
    MasonHighlightBlockBoldSecondary = { fg = c.white, bg = c.teal_1 },
    MasonHighlightSecondary = { fg = c.pink },
    MasonMuted = { fg = c.green },
    MasonMutedBlock = { fg = c.purple, bg = c.azure },

    -- Navic
    NavicIconsFile = { fg = c.teal, bg = c.white_2 },
    NavicIconsModule = { fg = c.yellow, bg = c.white_2 },
    NavicIconsNamespace = { fg = c.teal, bg = c.white_2 },
    NavicIconsPackage = { fg = c.teal, bg = c.white_2 },
    NavicIconsClass = { fg = c.orange, bg = c.white_2 },
    NavicIconsMethod = { fg = c.blue, bg = c.white_2 },
    NavicIconsProperty = { fg = c.green1, bg = c.white_2 },
    NavicIconsField = { fg = c.green1, bg = c.white_2 },
    NavicIconsConstructor = { fg = c.orange, bg = c.white_2 },
    NavicIconsEnum = { fg = c.orange, bg = c.white_2 },
    NavicIconsInterface = { fg = c.orange, bg = c.white_2 },
    NavicIconsFunction = { fg = c.blue, bg = c.white_2 },
    NavicIconsVariable = { fg = c.magenta, bg = c.white_2 },
    NavicIconsConstant = { fg = c.magenta, bg = c.white_2 },
    NavicIconsString = { fg = c.green, bg = c.white_2 },
    NavicIconsNumber = { fg = c.orange, bg = c.white_2 },
    NavicIconsBoolean = { fg = c.orange, bg = c.white_2 },
    NavicIconsArray = { fg = c.orange, bg = c.white_2 },
    NavicIconsObject = { fg = c.orange, bg = c.white_2 },
    NavicIconsKey = { fg = c.purple, bg = c.white_2 },
    NavicIconsKeyword = { fg = c.purple, bg = c.white_2 },
    NavicIconsNull = { fg = c.orange, bg = c.white_2 },
    NavicIconsEnumMember = { fg = c.green1, bg = c.white_2 },
    NavicIconsStruct = { fg = c.orange, bg = c.white_2 },
    NavicIconsEvent = { fg = c.orange, bg = c.white_2 },
    NavicIconsOperator = { fg = c.teal, bg = c.white_2 },
    NavicIconsTypeParameter = { fg = c.green1, bg = c.white_2 },
    NavicText = { fg = c.purple, bg = c.white_2 },
    NavicSeparator = { fg = c.pink, bg = c.white_2 },

    -- Illuminate
    IlluminatedWordText = { bg = c.lavender },
    IlluminatedWordRead = { bg = c.lavender },
    IlluminatedWordWrite = { bg = c.lavender },

    -- Neorg
    ['@neorg.headings.1.title.norg'] = { fg = c.teal, bold = true },
    ['@neorg.headings.1.prefix.norg'] = { fg = c.teal, bold = true },
    ['@neorg.headings.2.title.norg'] = { fg = c.blue, bold = true },
    ['@neorg.headings.2.prefix.norg'] = { fg = c.blue, bold = true },
    ['@neorg.headings.3.title.norg'] = { fg = c.pink, bold = true },
    ['@neorg.headings.3.prefix.norg'] = { fg = c.pink, bold = true },
    ['@neorg.headings.4.title.norg'] = { fg = c.violet, bold = true },
    ['@neorg.headings.4.prefix.norg'] = { fg = c.violet, bold = true },
    ['@neorg.headings.5.title.norg'] = { fg = c.red, bold = true },
    ['@neorg.headings.5.prefix.norg'] = { fg = c.red, bold = true },
    ['@neorg.headings.6.title.norg'] = { fg = c.orange, bold = true },
    ['@neorg.headings.6.prefix.norg'] = { fg = c.orange, bold = true },
    ['@neorg.headings.7.title.norg'] = { fg = c.purple_1, bold = true },
    ['@neorg.headings.7.prefix.norg'] = { fg = c.purple_1, bold = true },
    ['@neorg.headings.8.title.norg'] = { fg = c.black, bold = true },
    ['@neorg.headings.8.prefix.norg'] = { fg = c.black, bold = true },
    ['@neorg.links.description.norg'] = { fg = c.blue_1, underline = true },

    -- Neogit
    NeogitBranch = { fg = c.blue_1, bold = true },
    NeogitChangeAdded = { fg = c.green, italic = true },
    NeogitChangeBothModified = { fg = c.pink, italic = true },
    NeogitChangeCopied = { fg = c.blue_1, italic = true },
    NeogitChangeDeleted = { fg = c.red, italic = true },
    NeogitChangeModified = { fg = c.orange, italic = true },
    NeogitChangeNewFile = { fg = c.purple, italic = true },
    NeogitChangeRenamed = { fg = c.pink, italic = true },
    NeogitChangeUpdated = { fg = c.green, italic = true },
    NeogitCommitViewHeader = { fg = c.white, bg = c.teal_1, bold = true },
    NeogitDiffAdd = { link = 'diffAdded' },
    NeogitDiffAddHighlight = { link = 'diffAdded' },
    NeogitDiffDelete = { link = 'diffDelete' },
    NeogitDiffDeleteHighlight = { link = 'diffDelete' },
    NeogitDiffHeader = { fg = c.blue_1, bold = true },
    NeogitDiffHeaderHighlight = { fg = c.blue_1, bold = true },
    NeogitFilePath = { fg = c.blue_1, italic = true },
    NeogitHunkHeader = { fg = c.teal_1, bg = c.azure, bold = true },
    NeogitHunkHeaderHighlight = { fg = c.white, bg = c.teal_1, bold = true },
    NeogitSectionHeader = { fg = c.teal_1, bold = true },
  }

  -- Terminal colors
  vim.g.terminal_color_0 = c.black
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.orange
  vim.g.terminal_color_4 = c.blue_1
  vim.g.terminal_color_5 = c.pink
  vim.g.terminal_color_6 = c.teal_1
  vim.g.terminal_color_7 = c.slate
  vim.g.terminal_color_8 = c.slate
  vim.g.terminal_color_9 = c.red
  vim.g.terminal_color_10 = c.green
  vim.g.terminal_color_11 = c.orange
  vim.g.terminal_color_12 = c.blue
  vim.g.terminal_color_13 = c.pink
  vim.g.terminal_color_14 = c.teal_1
  vim.g.terminal_color_15 = c.slate

  -- Apply cursor highlights
  vim.cmd([[set guicursor=n-v-c:block-Cursor,i-ci-ve:ver100-Cursor,r-cr:hor20,o:hor50-Cursor,sm:block-Cursor]])

  return highlights
end

return M
