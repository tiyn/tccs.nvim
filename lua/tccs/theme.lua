local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function(opts)
  local c = require("tccs.colors").get_colors()

  hl(0, "Normal", { fg = c.fg, bg = c.bg })
  hl(0, "ColorColumn", { bg = c.color_column })
  hl(0, "Cursor", { fg = c.cursor })
  hl(0, "CursorLine", { bg = c.bg_alt })
  hl(0, "CursorColumn", { bg = c.bg_alt })

  hl(0, "CursorLineNr", { fg = c.accent, bg = c.bg_alt })
  hl(0, "LineNr", { fg = c.border })

  hl(0, "Directory", { fg = c.func })

  hl(0, "ErrorMsg", { fg = c.fg, bg = c.error, standout = true })

  hl(0, "VertSplit", { fg = c.bg_alt, bg = c.bg_alt })

  hl(0, "Folded", { fg = c.fg_idle, bg = c.bg })
  hl(0, "FoldColumn", { bg = c.bg })
  hl(0, "SignColumn", { bg = c.bg })

  hl(0, "MatchParen", { fg = c.fg, bg = c.bg, underline = true })
  hl(0, "ModeMsg", { fg = c.fg_alt })
  hl(0, "MoreMsg", { fg = c.fg_alt })
  hl(0, "NonText", { fg = c.border })

  hl(0, "Pmenu", { fg = c.fg, bg = c.popup, ctermfg = 188, ctermbg = 235 })
  hl(0, "PmenuSel", { fg = c.popup, bg = c.fg, ctermfg = 235, ctermbg = 188 })

  hl(0, "FloatBorder", { fg = c.fg, bg = c.popup })
  hl(0, "Question", { fg = c.fg_alt })
  hl(0, "Search", { fg = c.bg, bg = c.fg_alt })
  hl(0, "SpecialKey", { fg = c.popup })

  hl(0, "SpellCap", { fg = c.warning, undercurl = true, sp = c.error })
  hl(0, "SpellLocal", { fg = c.warning, undercurl = true, sp = c.keyword })
  hl(0, "SpellBad", { fg = c.error, undercurl = true, sp = c.error })
  hl(0, "SpellRare", { fg = c.error, undercurl = true, sp = c.error })

  hl(0, "StatusLine", { fg = c.fg, bg = c.bg_alt })
  hl(0, "StatusLineNC", { fg = c.fg_idle, bg = c.bg_alt })

  hl(0, "WildMenu", { fg = c.fg, bg = c.popup })

  hl(0, "TabLine", { fg = c.accent_alt, bg = c.bg_alt })
  hl(0, "TabLineFill", { fg = c.fg, bg = c.popup })
  hl(0, "TabLineSel", { fg = c.fg, bg = c.bg })

  hl(0, "Visual", { bg = c.popup })

  -- syntax
  hl(0, "Title", { fg = c.bold, bold = true })
  hl(0, "Comment", { fg = c.comment, italic = opts.italic_comments })
  hl(0, "Constant", { fg = c.constant })
  hl(0, "String", { fg = c.string })
  hl(0, "Identifier", { fg = c.entity })
  hl(0, "Function", { fg = c.func })
  hl(0, "Statement", { fg = c.keyword })
  hl(0, "Operator", { fg = c.operator })
  hl(0, "Exception", { fg = c.markup })
  hl(0, "PreProc", { fg = c.keyword })
  hl(0, "Type", { fg = c.entity })
  hl(0, "Structure", { fg = c.special })
  hl(0, "Special", { fg = c.special })
  hl(0, "Delimiter", { fg = c.special })
  hl(0, "Underlined", { fg = c.tag, underline = true })
  hl(0, "Ignore", {})
  hl(0, "Error", { fg = c.fg, bg = c.error, undercurl = true, sp = c.error })
  hl(0, "Todo", { fg = c.markup })
  hl(0, "Number", { fg = c.number })

  -- quickfix window highlighting
  hl(0, "qfLineNr", { fg = c.accent })
  hl(0, "Conceal", { fg = c.accent_alt })
  hl(0, "CursorLineConceal", { fg = c.border, bg = c.bg_alt })

  -- diff syntax highlighting
  hl(0, "DiffAdd", { bg = c.added_bg })
  hl(0, "diffAdded", { link = "DiffAdd" })
  hl(0, "DiffChange", { bg = c.modified_bg })
  hl(0, "DiffDelete", { bg = c.removed_bg })
  hl(0, "diffRemoved", { link = "DiffDelete" })
  hl(0, "DiffText", { bg = c.modified_fg_alt })

  -- netrw
  hl(0, "netrwClassify", { fg = c.fg_alt })

  -- gitgutter
  hl(0, "GitGutterAdd", { fg = c.added_fg, bg = c.bg })
  hl(0, "GitGutterChange", { fg = c.modified_fg, bg = c.bg })
  hl(0, "GitGutterDelete", { fg = c.removed_fg, bg = c.bg })
  hl(0, "GitGutterChangeDelete", { fg = c.modified_fg, bg = c.bg, underline = true })

  -- signify
  hl(0, "SignifySignAdd", { fg = c.added_fg, bg = c.bg })
  hl(0, "SignifySignChange", { fg = c.modified_fg, bg = c.bg })
  hl(0, "SignifySignDelete", { fg = c.removed_fg, bg = c.bg })
  hl(0, "SignifySignChangeDelete", { fg = c.modified_fg, bg = c.bg, underline = true })

  -- nerdtree
  hl(0, "NERDTreeOpenable", { fg = c.fg_idle })
  hl(0, "NERDTreeCloseable", { fg = c.accent })
  hl(0, "NERDTreeUp", { fg = c.fg_idle })
  hl(0, "NERDTreeDir", { fg = c.fg_alt })
  hl(0, "NERDTreeFile", {})
  hl(0, "NERDTreeDirSlash", { fg = c.fg_alt })

  -- telescope
  hl(0, "TelescopeMatching", { fg = c.accent, bold = true })
  hl(0, "TelescopePromptBorder", { fg = c.border })
  hl(0, "TelescopeResultsBorder", { fg = c.border })
  hl(0, "TelescopePreviewBorder", { fg = c.border })
  hl(0, "TelescopeNormal", { fg = c.fg })
  hl(0, "TelescopeSelection", { fg = c.bg, bg = c.fg })
  hl(0, "TelescopeMultiSelection", { fg = c.bg, bg = c.fg })
  hl(0, "TelescopePromptPrefix", { fg = c.fg, bg = "NONE" })

  -- diagnostics
  hl(0, "DiagnosticDefaultError", { fg = c.error })
  hl(0, "DiagnosticUnderlineError", { fg = c.error, undercurl = true, sp = c.error })
  hl(0, "DiagnosticSignError", { fg = c.error, bg = c.bg_alt })
  hl(0, "DiagnosticWarn", { fg = c.warning })
  hl(0, "DiagnosticUnderlineWarn", { fg = c.warning, undercurl = true, sp = c.warning })
  hl(0, "DiagnosticSignWarning", { fg = c.warning, bg = c.bg_alt })
  hl(0, "DiagnosticVirtualTextHint", { fg = c.hint })
  hl(0, "DiagnosticSignHint", { fg = c.hint })
  hl(0, "DiagnosticHint", { fg = c.hint })
  hl(0, "DiagnosticVirtualTextInfo", { fg = c.fg })
  hl(0, "DiagnosticSignInfo", { fg = c.fg })
  hl(0, "DiagnosticInfo", { fg = c.fg })

  hl(0, "WarningMsg", { fg = c.warning, bold = true })

  -- typescript
  hl(0, "typescriptDecorator", { fg = c.markup })
  hl(0, "typescriptImport", { fg = c.keyword })
  hl(0, "typescriptExport", { fg = c.keyword })
  hl(0, "typescriptIdentifier", { fg = c.tag, italic = opts.italic_comments })
  hl(0, "typescriptAssign", { fg = c.operator })
  hl(0, "typescriptBinaryOp", { fg = c.operator })
  hl(0, "typescriptTernaryOp", { fg = c.operator })
  hl(0, "typescriptModule", { fg = c.keyword })
  hl(0, "typescriptTypeBrackets", { fg = c.special })
  hl(0, "typescriptClassName", { fg = c.tag })
  hl(0, "typescriptAmbientDeclaration", { fg = c.keyword })
  hl(0, "typescriptRegextString", { fg = c.regexp })
  hl(0, "typescriptTry", { fg = c.markup })
  hl(0, "typescriptExceptions", { fg = c.markup })
  hl(0, "typescriptDebugger", { fg = c.markup, bold = true })
  hl(0, "typescriptParens", { fg = c.special })
  hl(0, "typescriptVariable", { fg = c.keyword })
  hl(0, "typescriptObjectLabel", { fg = c.tag })
  hl(0, "typescriptOperator", { fg = c.keyword })
  hl(0, "typescriptArrowFunc", { fg = c.operator })
  hl(0, "typescriptBraces", { fg = c.special })
  hl(0, "typescriptGlobal", { fg = c.keyword })
  hl(0, "typescriptDOMFormProp", { fg = c.entity })
  hl(0, "typescriptDOMEventProp", { fg = c.entity })
  hl(0, "typescriptBOMWindowProp", { fg = c.keyword })
  hl(0, "typescriptDateMethod", { fg = c.func })
  hl(0, "typescriptBlobMethod", { fg = c.func })
  hl(0, "typescriptArrayMethod", { fg = c.func })
  hl(0, "typescriptArrayStaticMethod", { fg = c.func })
  hl(0, "typescriptStringMethod", { fg = c.func })
  hl(0, "typescriptPaymentMethod", { fg = c.func })
  hl(0, "typescriptHeadersMethod", { fg = c.func })
  hl(0, "typescriptCacheMethod", { fg = c.func })
  hl(0, "typescriptDOMEEventMethod", { fg = c.func })
  hl(0, "typescriptDOMEEventTargetMethod", { fg = c.func })
  hl(0, "typescriptBOMWindowMethod", { fg = c.func })
  hl(0, "typescriptDOMStorageMethod", { fg = c.func })
  hl(0, "typescriptPromiseMethod", { fg = c.func })
  hl(0, "typescriptGlobalMethod", { fg = c.func })
  hl(0, "typescriptFunctionMethod", { fg = c.func })
  hl(0, "typescriptBOMLocationMethod", { fg = c.func })

  -- javascript
  hl(0, "jsNull", { fg = c.constant })
  hl(0, "jsThis", { fg = c.constant, italic = opts.italic_comments })
  hl(0, "jsBrackets", { fg = c.special })
  hl(0, "jsDot", { fg = c.special })
  hl(0, "jsParens", { fg = c.special })
  hl(0, "jsFuncParens", { fg = c.special })
  hl(0, "jsFuncBraces", { fg = c.special })
  hl(0, "jsIfElseBraces", { fg = c.special })
  hl(0, "jsObjectKey", { fg = c.tag })
  hl(0, "jsObjectProp", { fg = c.tag })
  hl(0, "jsRegexpString", { fg = c.regexp })
  hl(0, "jsStorageClass", { fg = c.keyword })
  hl(0, "jsArrowFunction", { fg = c.operator })

  -- treesitter
  hl(0, "@include", { fg = c.keyword })
  hl(0, "@parameter", { fg = c.special })
  hl(0, "@field", { fg = c.tag })
  hl(0, "@property", { fg = c.tag })
  hl(0, "@attribute", { fg = c.markup })
  hl(0, "@variable.builtin", { fg = c.constant, italic = opts.italic_comments })
  hl(0, "@constant.builtin", { fg = c.constant })
  hl(0, "@string.regex", { fg = c.regexp })
  hl(0, "@function.macro", { fg = c.func })
  hl(0, "@text.title", { fg = c.bold, bold = true })
  hl(0, "@text.strong", { fg = c.bold, bold = true })

  -- fugitive
  hl(0, "fugitiveUntrackedHeading", { fg = c.accent })
  hl(0, "fugitiveUnstagedHeading", { fg = c.accent })
  hl(0, "fugitiveStagedHeading", { fg = c.accent })
  hl(0, "fugitiveHeading", { fg = c.accent })

  -- git commit
  hl(0, "gitcommitBranch", { fg = c.ui })
  hl(0, "gitcommitHeader", { fg = c.accent })
  hl(0, "gitcommitSummary", { fg = c.fg })
  hl(0, "gitcommitOverflow", { fg = c.accent })

  -- startify
  hl(0, "StartifyFile", { fg = c.fg })

  -- vim
  hl(0, "vimUserfunc", { fg = c.func })
  hl(0, "vimFunction", { fg = c.func })
  hl(0, "vimIsCommand", {})

  -- xml
  hl(0, "xmlTag", { fg = c.special })
  hl(0, "xmlTagName", { fg = c.keyword })
  hl(0, "xmlEntity", { fg = c.tag })
  hl(0, "xmlEntityPunct", { fg = c.operator })
  hl(0, "xmlEqual", { fg = c.operator })

  -- ini
  hl(0, "dosiniHeader", { fg = c.keyword })

  -- pandoc
  hl(0, "pandocPipeTableHeader", { fg = c.keyword })
  hl(0, "pandocPipeTableDelims", { fg = c.keyword })
  hl(0, "pandocDelimitedCodeBlock", { fg = c.keyword })

  -- shell
  hl(0, "shTestOpr", { fg = c.operator })
  hl(0, "shOption", { fg = c.special })
  hl(0, "shQuote", { fg = c.string })

  -- haskell
  hl(0, "haskellDeclKeyword", { fg = c.keyword })
  hl(0, "haskellLet", { fg = c.keyword })
  hl(0, "haskellWhere", { fg = c.keyword })
  hl(0, "haskellIdentifier", { fg = c.tag })

  -- php
  hl(0, "phpDefine", { fg = c.keyword })
  hl(0, "phpStructure", { fg = c.keyword })

  -- ruby
  hl(0, "rubyModule", { fg = c.keyword })
  hl(0, "rubyRegexp", { fg = c.regexp })
  hl(0, "rubyRegexpDelimiter", { fg = c.regexp })
  hl(0, "rubyStringDelimiter", { fg = c.string })

  -- nvimtree
  hl(0, "NvimTreeRootFolder", { fg = c.fg, bold = true })
  hl(0, "NvimTreeGitDirty", { fg = c.modified_fg })
  hl(0, "NvimTreeGitNew", { fg = c.added_fg })
  hl(0, "NvimTreeImageFile", { fg = c.accent })
  hl(0, "NvimTreeEmptyFolderName", { fg = c.ui })
  hl(0, "NvimTreeFolderName", { fg = c.fg })
  hl(0, "NvimTreeSpecialFile", { fg = c.accent, underline = true })
  hl(0, "NvimTreeNormal", { fg = c.fg })
  hl(0, "NvimTreeCursorLine", {})
  hl(0, "NvimTreeVertSplit", { bg = c.bg_alt })
  hl(0, "NvimTreeEndOfBuffer", {})
  hl(0, "NvimTreeOpenedFolderName", {})
  hl(0, "NvimTreeGitRenamed", { fg = c.modified_fg })
  hl(0, "NvimTreeGitIgnored", { fg = c.ui })
  hl(0, "NvimTreeGitDeleted", { fg = c.removed_fg })
  hl(0, "NvimTreeGitStaged", { fg = c.added_fg })
  hl(0, "NvimTreeGitMerge", { fg = c.modified_fg })
  hl(0, "NvimTreeGitDirty", { fg = c.modified_fg })
  hl(0, "NvimTreeGitNew", { fg = c.added_fg })

  -- nvim-cursorword
  hl(0, "CursorWord", { underline = true })

  -- markup
  hl(0, "@text", { fg = c.fg }) -- Legacy
  hl(0, "@markup.strong", { fg = c.bold, bold = true })
  hl(0, "@markup.italic", { fg = c.fg, italic = true })
  hl(0, "@markup.underline", { fg = c.fg, bg = "NONE" })
  hl(0, "@markup.strikethrough", { fg = c.fg, strikethrough = true })
  hl(0, "@markup.heading", { fg = c.bold, bold = true })
  hl(0, "@markup.raw", { fg = c.fg })
  hl(0, "@markup.raw.markdown", { fg = c.string })
  hl(0, "@markup.raw.markdown_inline", { fg = c.string })
  hl(0, "@markup.link.label", { fg = c.tag })
  hl(0, "@markup.link.url", { fg = c.string })
  hl(0, "@markup.list.checked", { link = "Todo" })
  hl(0, "@markup.list.unchecked", { link = "Todo" })
  hl(0, "@textReference", { fg = c.tag })
  hl(0, "@stringEscape", { fg = c.string, bold = true })

  -- modes.nvim
  hl(0, "ModesCopy", { bg = c.yank_fg })
  hl(0, "ModesDelete", { bg = c.removed_fg })
  hl(0, "ModesInsert", { bg = c.added_fg })
  hl(0, "ModesVisual", { bg = c.visual_fg })

  -- highlighting on yank
  hl(0, "YankHighlight", { bg = c.yank_fg })
  hl(0, "TextYankPost", { bg = c.yank_fg })

end

return theme

--hl(0, 'EndOfBuffer', { fg = c.bg, bg = 'NONE' })
--hl(0, 'IncSearch', { fg = c.vscNone, bg = c.vscSearchCurrent })
--hl(0, 'PmenuSbar', { fg = 'NONE', bg = c.vscPopupHighlightGray })
--hl(0, 'PmenuThumb', { fg = 'NONE', bg = c.vscPopupFront })
--hl(0, 'VisualNOS', { bg = c.vscSelection })
--hl(0, 'Character', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, 'Boolean', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'Float', { fg = c.vscLightGreen, bg = 'NONE' })
--hl(0, 'Conditional', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'Repeat', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'Label', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'Keyword', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'Include', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'Define', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'Macro', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'StorageClass', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'Typedef', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'SpecialChar', { fg = c.fg, bg = 'NONE' })
--hl(0, 'Tag', { fg = c.fg, bg = 'NONE' })
--hl(0, 'SpecialComment', { fg = c.vscGreen, bg = 'NONE' })
--hl(0, 'Debug', { fg = c.fg, bg = 'NONE' })
--hl(0, 'Conceal', { fg = c.fg, bg = c.bg })
--hl(0, 'Whitespace', { fg = isDark and c.vscLineNumber or c.vscTabOther })
--
---- Treesitter
--
--hl(0, '@error', { fg = c.vscRed, bg = 'NONE' })
--hl(0, '@punctuation.bracket', { fg = c.fg, bg = 'NONE' })
--hl(0, '@punctuation.special', { fg = c.fg, bg = 'NONE' })
--hl(0, '@comment', { fg = c.vscGreen, bg = 'NONE', italic = opts.italic_comments })
--hl(0, '@constant', { fg = c.vscAccentBlue, bg = 'NONE' })
--hl(0, '@constant.macro', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, '@string', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, '@character', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, '@number', { fg = c.vscLightGreen, bg = 'NONE' })
--hl(0, '@boolean', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, '@float', { fg = c.vscLightGreen, bg = 'NONE' })
--hl(0, '@annotation', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, '@attribute.builtin', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, '@namespace', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, '@function.builtin', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, '@function', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, '@parameter.reference', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, '@method', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, '@constructor', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, '@conditional', { fg = c.vscPink, bg = 'NONE' })
--hl(0, '@repeat', { fg = c.vscPink, bg = 'NONE' })
--hl(0, '@label', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, '@keyword', { fg = c.vscPink, bg = 'NONE' })
--hl(0, '@keyword.function', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, '@keyword.operator', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, '@operator', { fg = c.fg, bg = 'NONE' })
--hl(0, '@exception', { fg = c.vscPink, bg = 'NONE' })
--hl(0, '@type', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, '@type.builtin', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, '@type.qualifier', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, '@storageClass', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, '@structure', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, '@variable', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, '@text', { fg = c.fg, bg = 'NONE' })
--hl(0, '@text.underline', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, '@tag', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, '@tag.delimiter', { fg = c.vscGray, bg = 'NONE' })
--hl(0, '@tag.attribute', { fg = c.vscLightBlue, bg = 'NONE' })
--
--hl(0, '@text.literal', { fg = c.fg, bg = 'NONE' })
--hl(0, '@text.literal.markdown', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, '@text.literal.markdown_inline', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, '@text.emphasis', { fg = c.fg, bg = 'NONE', italic = true })
--hl(0, '@text.uri', { fg = c.fg, bg = 'NONE' })
--hl(0, '@textReference', { fg = isDark and c.vscOrange or c.vscYellowOrange })
--hl(0, '@punctuation.delimiter', { fg = c.fg, bg = 'NONE' })
--hl(0, '@stringEscape', { fg = isDark and c.vscOrange or c.vscYellowOrange, bold = true })
--
--hl(0, '@text.note', { fg = c.vscBlueGreen, bg = 'NONE', bold = true })
--hl(0, '@text.warning', { fg = c.vscYellowOrange, bg = 'NONE', bold = true })
--hl(0, '@text.danger', { fg = c.vscRed, bg = 'NONE', bold = true })
--
--hl(0, '@text.diff.add', { link = 'DiffAdd' })
--hl(0, '@text.diff.delete', { link = 'DiffDelete' })
--
---- LSP semantic tokens
--hl(0, '@lsp.typemod.type.defaultLibrary', { link = '@type.builtin' })
--hl(0, '@lsp.type.type', { link = '@type' })
--hl(0, '@lsp.type.typeParameter', { link = '@type' })
--hl(0, '@lsp.type.macro', { link = '@constant' })
--hl(0, '@lsp.type.enumMember', { link = '@constant' })
--hl(0, '@event', { link = 'Identifier' })
--hl(0, '@interface', { link = 'Identifier' })
--hl(0, '@modifier', { link = 'Identifier' })
--hl(0, '@regexp', { fg = c.vscRed, bg = 'NONE' })
--hl(0, '@decorator', { link = 'Identifier' })
--
---- Markdown
--hl(0, 'markdownBold', { fg = isDark and c.vscBlue or c.vscYellowOrange, bold = true })
--hl(0, 'markdownCode', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, 'markdownRule', { fg = isDark and c.vscBlue or c.vscYellowOrange, bold = true })
--hl(0, 'markdownCodeDelimiter', { fg = c.fg, bg = 'NONE' })
--hl(0, 'markdownHeadingDelimiter', { fg = isDark and c.vscBlue or c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'markdownFootnote', { fg = isDark and c.vscOrange or c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'markdownFootnoteDefinition', { fg = isDark and c.vscOrange or c.vscYellowOrange })
--hl(0, 'markdownUrl', { fg = c.fg, bg = 'NONE', underline = true })
--hl(0, 'markdownLinkText', { fg = isDark and c.vscOrange or c.vscYellowOrange })
--hl(0, 'markdownEscape', { fg = isDark and c.vscOrange or c.vscYellowOrange })
--
---- Asciidoc
--hl(0, "asciidocAttributeEntry", { fg = c.vscYellowOrange })
--hl(0, "asciidocAttributeList", { fg = c.vscPink })
--hl(0, "asciidocAttributeRef", { fg = c.vscYellowOrange })
--hl(0, "asciidocHLabel", { fg = c.vscBlue, bold = true })
--hl(0, "asciidocListingBlock", { fg = c.vscOrange })
--hl(0, "asciidocMacroAttributes", { fg = c.vscYellowOrange })
--hl(0, "asciidocOneLineTitle", { fg = c.vscBlue, bold = true })
--hl(0, "asciidocPassthroughBlock", { fg = c.vscBlue })
--hl(0, "asciidocQuotedMonospaced", { fg = c.vscOrange })
--hl(0, "asciidocTriplePlusPassthrough", { fg = c.vscYellow })
--hl(0, "asciidocMacro", { fg = c.vscPink })
--hl(0, "asciidocAdmonition", { fg = c.vscOrange })
--hl(0, "asciidocQuotedEmphasized", { fg = c.vscBlue, italic = true })
--hl(0, "asciidocQuotedEmphasized2", { fg = c.vscBlue, italic = true })
--hl(0, "asciidocQuotedEmphasizedItalic", { fg = c.vscBlue, italic = true })
--hl(0, "asciidocBackslash", { link = "Keyword" })
--hl(0, "asciidocQuotedBold", { link = "markdownBold" })
--hl(0, "asciidocQuotedMonospaced2", { link = "asciidocQuotedMonospaced" })
--hl(0, "asciidocQuotedUnconstrainedBold", { link = "asciidocQuotedBold" })
--hl(0, "asciidocQuotedUnconstrainedEmphasized", { link = "asciidocQuotedEmphasized" })
--hl(0, "asciidocURL", { link = "markdownUrl" })
--
---- JSON
--hl(0, 'jsonKeyword', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'jsonEscape', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'jsonNull', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'jsonBoolean', { fg = c.vscBlue, bg = 'NONE' })
--
---- HTML
--hl(0, 'htmlTag', { fg = c.vscGray, bg = 'NONE' })
--hl(0, 'htmlEndTag', { fg = c.vscGray, bg = 'NONE' })
--hl(0, 'htmlTagName', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'htmlSpecialTagName', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'htmlArg', { fg = c.vscLightBlue, bg = 'NONE' })
--
---- PHP
--hl(0, 'phpStaticClasses', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'phpMethod', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'phpClass', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'phpFunction', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'phpInclude', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'phpUseClass', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'phpRegion', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'phpMethodsVar', { fg = c.vscLightBlue, bg = 'NONE' })
--
---- CSS
--hl(0, 'cssBraces', { fg = c.fg, bg = 'NONE' })
--hl(0, 'cssInclude', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'cssTagName', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'cssClassName', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'cssPseudoClass', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'cssPseudoClassId', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'cssPseudoClassLang', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'cssIdentifier', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'cssProp', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'cssDefinition', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'cssAttr', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, 'cssAttrRegion', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, 'cssColor', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, 'cssFunction', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, 'cssFunctionName', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, 'cssVendor', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, 'cssValueNumber', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, 'cssValueLength', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, 'cssUnitDecorators', { fg = c.vscOrange, bg = 'NONE' })
--hl(0, 'cssStyle', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'cssImportant', { fg = c.vscBlue, bg = 'NONE' })
--
---- JavaScript
--
--hl(0, 'jsVariableDef', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'jsFuncArgs', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'jsFuncBlock', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'jsOperatorKeyword', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'jsDestructuringBlock', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'jsGlobalObjects', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'jsModuleKeyword', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'jsClassDefinition', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'jsClassKeyword', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'jsExtendsKeyword', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'jsExportDefault', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'jsFuncCall', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'jsObjectValue', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'jsParen', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'jsIfElseBlock', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'jsParenIfElse', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'jsSpreadOperator', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'jsSpreadExpression', { fg = c.vscLightBlue, bg = 'NONE' })
--
---- Typescript

--hl(0, 'typescriptLabel', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptEndColons', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptDocTags', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptDocComment', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'typescriptLogicSymbols', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptBOM', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptVariableDeclaration', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptAliasDeclaration', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'typescriptAliasKeyword', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptAccessibilityModifier', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptMethodAccessor', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptMember', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'typescriptTypeReference', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'typescriptTemplateSB', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'typescriptArrowFuncArg', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptParamImpl', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptFuncComma', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptCastKeyword', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptCall', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptCase', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptReserved', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'typescriptDefault', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptPredefinedType', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'typescriptClassHeritage', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'typescriptClassExtends', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptClassKeyword', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptBlock', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptDOMDocProp', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptTemplateSubstitution', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptClassBlock', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptFuncCallArg', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptIndexExpr', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptConditionalParen', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptArray', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'typescriptES6SetProp', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptObjectLiteral', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptTypeParameter', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'typescriptEnumKeyword', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptEnum', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'typescriptLoopParen', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptParenExp', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'typescriptFuncTypeArrow', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptInterfaceHeritage', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'typescriptInterfaceName', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'typescriptInterfaceKeyword', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptInterfaceExtends', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptAsyncFuncKeyword', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'typescriptFuncKeyword', { fg = c.vscBlue, bg = 'NONE' })
--
---- XML
--hl(0, 'xmlEndTag', { fg = c.vscBlue, bg = 'NONE' })
--
---- Ruby
--hl(0, 'rubyClassNameTag', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'rubyClassName', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'rubyModuleName', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'rubyConstant', { fg = c.vscBlueGreen, bg = 'NONE' })
--
---- Golang
--hl(0, 'goPackage', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'goImport', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'goVar', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'goConst', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'goStatement', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'goType', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'goSignedInts', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'goUnsignedInts', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'goFloats', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'goComplexes', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'goBuiltins', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'goBoolean', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'goPredefinedIdentifiers', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'goTodo', { fg = c.vscGreen, bg = 'NONE' })
--hl(0, 'goDeclaration', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'goDeclType', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'goTypeDecl', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'goTypeName', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'goVarAssign', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'goVarDefs', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'goReceiver', { fg = c.fg, bg = 'NONE' })
--hl(0, 'goReceiverType', { fg = c.fg, bg = 'NONE' })
--hl(0, 'goFunctionCall', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'goMethodCall', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'goSingleDecl', { fg = c.vscLightBlue, bg = 'NONE' })
--
---- Python
--hl(0, 'pythonStatement', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'pythonOperator', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'pythonException', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'pythonExClass', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'pythonBuiltinObj', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'pythonBuiltinType', { fg = c.vscBlueGreen, bg = 'NONE' })
--hl(0, 'pythonBoolean', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'pythonNone', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'pythonTodo', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'pythonClassVar', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'pythonClassDef', { fg = c.vscBlueGreen, bg = 'NONE' })
--
---- TeX
--hl(0, 'texStatement', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'texBeginEnd', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'texBeginEndName', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'texOption', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'texBeginEndModifier', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'texDocType', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'texDocTypeArgs', { fg = c.vscLightBlue, bg = 'NONE' })
--
---- Git
--hl(0, 'gitcommitOnBranch', { fg = c.vscGray, bg = 'NONE' })
--hl(0, 'gitcommitComment', { fg = c.vscGray, bg = 'NONE' })
--hl(0, 'gitcommitSelectedType', { fg = c.vscGreen, bg = 'NONE' })
--hl(0, 'gitcommitSelectedFile', { fg = c.vscGreen, bg = 'NONE' })
--hl(0, 'gitcommitDiscardedType', { fg = c.vscRed, bg = 'NONE' })
--hl(0, 'gitcommitDiscardedFile', { fg = c.vscRed, bg = 'NONE' })
--hl(0, 'gitcommitBlank', { fg = c.vscPink, bg = 'NONE' })
--
---- Lua
--hl(0, 'luaFuncCall', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'luaFuncArgName', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'luaFuncKeyword', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'luaLocal', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'luaBuiltIn', { fg = c.vscBlue, bg = 'NONE' })
--
---- SH
--hl(0, 'shDeref', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'shVariable', { fg = c.vscLightBlue, bg = 'NONE' })
--
---- SQL
--hl(0, 'sqlKeyword', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'sqlFunction', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'sqlOperator', { fg = c.vscPink, bg = 'NONE' })
--
---- YAML
--hl(0, 'yamlKey', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'yamlConstant', { fg = c.vscBlue, bg = 'NONE' })
--
---- Git Signs
--hl(0, 'GitSignsAdd', { fg = c.vscGreen, bg = 'NONE' })
--hl(0, 'GitSignsChange', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'GitSignsDelete', { fg = c.vscRed, bg = 'NONE' })
--hl(0, 'GitSignsAddLn', { fg = c.bg, bg = c.vscGreen })
--hl(0, 'GitSignsChangeLn', { fg = c.bg, bg = c.vscYellow })
--hl(0, 'GitSignsDeleteLn', { fg = c.bg, bg = c.vscRed })
--
--
---- Bufferline
--hl(0, 'BufferLineIndicatorSelected', { fg = c.vscLeftDark, bg = 'NONE' })
--hl(0, 'BufferLineFill', { fg = 'NONE', bg = opts.transparent and c.bg or c.vscLeftDark })
--
---- BarBar
--hl(0, 'BufferCurrent', { fg = c.fg, bg = c.vscTabCurrent })
--hl(0, 'BufferCurrentIndex', { fg = c.fg, bg = c.vscTabCurrent })
--hl(0, 'BufferCurrentMod', { fg = c.vscYellowOrange, bg = c.vscTabCurrent })
--hl(0, 'BufferCurrentSign', { fg = c.fg, bg = c.vscTabCurrent })
--hl(0, 'BufferCurrentTarget', { fg = c.vscRed, bg = c.vscTabCurrent })
--hl(0, 'BufferVisible', { fg = c.vscGray, bg = c.vscTabCurrent })
--hl(0, 'BufferVisibleIndex', { fg = c.vscGray, bg = c.vscTabCurrent })
--hl(0, 'BufferVisibleMod', { fg = c.vscYellowOrange, bg = c.vscTabCurrent })
--hl(0, 'BufferVisibleSign', { fg = c.vscGray, bg = c.vscTabCurrent })
--hl(0, 'BufferVisibleTarget', { fg = c.vscRed, bg = c.vscTabCurrent })
--hl(0, 'BufferInactive', { fg = c.vscGray, bg = c.vscTabOther })
--hl(0, 'BufferInactiveIndex', { fg = c.vscGray, bg = c.vscTabOther })
--hl(0, 'BufferInactiveMod', { fg = c.vscYellowOrange, bg = c.vscTabOther })
--hl(0, 'BufferInactiveSign', { fg = c.vscGray, bg = c.vscTabOther })
--hl(0, 'BufferInactiveTarget', { fg = c.vscRed, bg = c.vscTabOther })
--hl(0, 'BufferTabpages', { fg = c.fg, bg = c.vscTabOther })
--hl(0, 'BufferTabpagesFill', { fg = c.fg, bg = c.vscTabOther })
--
---- IndentBlankLine
--hl(0, 'IndentBlanklineContextChar', { fg = c.vscContextCurrent, bg = 'NONE', nocombine = true })
--hl(0, 'IndentBlanklineContextStart', { sp = c.vscContextCurrent, bg = 'NONE', nocombine = true, underline = true })
--hl(0, 'IndentBlanklineChar', { fg = c.vscContext, bg = 'NONE', nocombine = true })
--hl(0, 'IndentBlanklineSpaceChar', { fg = c.vscContext, bg = 'NONE', nocombine = true })
--hl(0, 'IndentBlanklineSpaceCharBlankline', { fg = c.vscContext, bg = 'NONE', nocombine = true })
--
---- LSP
--hl(0, 'DiagnosticError', { fg = c.vscRed, bg = 'NONE' })
--hl(0, 'DiagnosticWarn', { fg = c.vscYellow, bg = 'NONE' })
--hl(0, 'DiagnosticInfo', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'DiagnosticHint', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'DiagnosticUnderlineHint', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vscBlue })
--hl(0, 'DiagnosticUnderlineInfo', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vscBlue })
--hl(0, 'LspReferenceText', { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue })
--hl(0, 'LspReferenceRead', { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue })
--hl(0, 'LspReferenceWrite', { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue })
--
---- COC.nvim
--hl(0, 'CocHighlightText', { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue })
--hl(0, 'CocHighlightRead', { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue })
--hl(0, 'CocHighlightWrite', { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue })
--
---- Nvim compe
--hl(0, 'CmpItemKindVariable', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'CmpItemKindInterface', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'CmpItemKindText', { fg = c.vscLightBlue, bg = 'NONE' })
--hl(0, 'CmpItemKindFunction', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'CmpItemKindMethod', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'CmpItemKindKeyword', { fg = c.fg, bg = 'NONE' })
--hl(0, 'CmpItemKindProperty', { fg = c.fg, bg = 'NONE' })
--hl(0, 'CmpItemKindUnit', { fg = c.fg, bg = 'NONE' })
--hl(0, 'CmpItemKindConstructor', { fg = c.vscUiOrange, bg = 'NONE' })
--hl(0, 'CmpItemMenu', { fg = c.vscPopupFront, bg = 'NONE' })
--hl(0, 'CmpItemAbbr', { fg = c.fg, bg = 'NONE' })
--hl(0, 'CmpItemAbbrDeprecated', { fg = c.vscCursorDark, bg = c.vscPopupBack, strikethrough = true })
--hl(0, 'CmpItemAbbrMatch', { fg = isDark and c.vscMediumBlue or c.vscDarkBlue, bg = 'NONE', bold = true })
--hl(0, 'CmpItemAbbrMatchFuzzy', { fg = isDark and c.vscMediumBlue or c.vscDarkBlue, bg = 'NONE', bold = true })
--
---- Dashboard
--hl(0, 'DashboardHeader', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'DashboardDesc', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'DashboardIcon', { fg = c.vscYellowOrange, bg = 'NONE' })
--hl(0, 'DashboardShortCut', { fg = c.vscPink, bg = 'NONE' })
--hl(0, 'DashboardKey', { fg = c.vscWhite, bg = 'NONE' })
--hl(0, 'DashboardFooter', { fg = c.vscBlue, bg = 'NONE', italic = true })
--
--hl(0, 'NvimTreeFolderIcon', { fg = c.vscBlue, bg = 'NONE' })
--hl(0, 'NvimTreeIndentMarker', { fg = c.vscLineNumber, bg = 'NONE' })
--
--hl(0, 'LspFloatWinNormal', { fg = c.fg, bg = 'NONE' })
--hl(0, 'LspFloatWinBorder', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaHoverBorder', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaSignatureHelpBorder', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaCodeActionBorder', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaDefPreviewBorder', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspLinesDiagBorder', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaRenameBorder', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaBorderTitle', { fg = c.vscCursorDark, bg = 'NONE' })
--hl(0, 'LSPSagaDiagnosticTruncateLine', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaDiagnosticBorder', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaDiagnosticBorder', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaShTruncateLine', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaShTruncateLine', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaDocTruncateLine', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaRenameBorder', { fg = c.vscLineNumber, bg = 'NONE' })
--hl(0, 'LspSagaLspFinderBorder', { fg = c.vscLineNumber, bg = 'NONE' })
--
---- symbols-outline
---- white fg and lualine blue bg
--hl(0, 'FocusedSymbol', { fg = '#ffffff', bg = c.vscUiBlue })
--hl(0, 'SymbolsOutlineConnector', { fg = c.vscLineNumber, bg = 'NONE' })
--
---- Legacy groups for official git.vim and diff.vim syntax
--hl(0, 'diffChanged', { link = 'DiffChange' })
---- Nvim compe
--hl(0, 'CompeDocumentation', { link = 'Pmenu' })
--hl(0, 'CompeDocumentationBorder', { link = 'Pmenu' })
--hl(0, 'CmpItemKind', { link = 'Pmenu' })
--hl(0, 'CmpItemKindClass', { link = 'CmpItemKindConstructor' })
--hl(0, 'CmpItemKindModule', { link = 'CmpItemKindKeyword' })
--hl(0, 'CmpItemKindOperator', { link = '@operator' })
--hl(0, 'CmpItemKindReference', { link = '@parameter.reference' })
--hl(0, 'CmpItemKindValue', { link = '@field' })
--hl(0, 'CmpItemKindField', { link = '@field' })
--hl(0, 'CmpItemKindEnum', { link = '@field' })
--hl(0, 'CmpItemKindSnippet', { link = '@text' })
--hl(0, 'CmpItemKindColor', { link = 'cssColor' })
--hl(0, 'CmpItemKindFile', { link = '@text.uri' })
--hl(0, 'CmpItemKindFolder', { link = '@text.uri' })
--hl(0, 'CmpItemKindEvent', { link = '@constant' })
--hl(0, 'CmpItemKindEnumMember', { link = '@field' })
--hl(0, 'CmpItemKindConstant', { link = '@constant' })
--hl(0, 'CmpItemKindStruct', { link = '@structure' })
--hl(0, 'CmpItemKindTypeParameter', { link = '@parameter' })
