#set page(
  paper: "us-letter",
  margin: (top: 0.3in, rest: 0.4in),
  footer: [
    #set text(6pt, fill: luma(150))
    #align(right)[Generated for GitHub Copilot Dev Days 2026]
  ]
)
#set text(font: "Segoe UI", size: 7pt)
#let colors = (accent: rgb("#0366d6"), light: rgb("#f6f8fa"), dark: rgb("#24292e"))

#align(center, text(12pt, weight: "bold", fill: colors.accent)[GitHub Copilot CLI Quick Reference])

#show heading: it => {
  set text(8pt, fill: colors.dark)
  v(5pt, weak: true)
  it
  v(2pt, weak: true)
}

#show table: set table(inset: (x: 4pt, y: 3pt),
      columns: (1in, 1fr), stroke: 0.4pt + luma(200), 
      fill: (x, y) => if y > 0 and calc.even(y) { colors.light })

#show table.cell: it => if it.y == 0 {
  set text(white, weight: "bold")
  rect(fill: colors.dark, width: 100%, inset: 1.5pt, it)
} else { it }

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.3in,
  [
    == Global Shortcuts
    #table(
      [Key], [Action],
      [@ FILE], [Attach file context],
      [\# NUM], [Attach Issue/PR context],
      [! CMD], [Run local shell command],
      [?], [Quick help ],
      [Esc / Esc Esc], [Cancel / Rewind],
      [Ctrl+C / D], [Cancel Clear / Shutdown],
      [Ctrl+G / L], [Editor / Clear screen],
      [Ctrl+Ent / Q], [Queue message (busy)],
      [Ctrl+R], [Search history],
      [Ctrl+X /], [Run slash command typing],
      [Ctrl+X o], [Open last timeline link],
      [Shift+Ent], [Insert newline],
      [Shift+Tab], [Cycle Modes (Std/Pln/Auto)],
    )

    == Navigation & Timeline
    #table(
      [Key], [Action],
      [Ctrl+O / E / T], [Expand items / Reasoning],
      [PgUp / Dn], [Scroll timeline view],
      [Ctrl+A / E], [Cursor Home / End],
      [Ctrl+K / U], [Clear End / Start],
      [Tab / Ctrl+Y], [Accept inline completion],
    )

    == Config Directory (`~/.copilot`)
    #table(
      [Path], [Description],
      [`settings.json`], [Personal user settings],
      [`config.json`], [Managed application state],
      [`mcp-config.json`], [User MCP definitions],
      [`lsp-config.json`], [User LSP definitions],
      [`agents/` | `skills/`], [Custom agents / skills],
      [`hooks/`], [User-level hook scripts],
      [`copilot-inst.md`], [Global custom instructions],
    )
  ],
  [
    == Slash Commands
    #table(
      [Command], [Action],
      [/add-dir], [Allow directory access],
      [/clear | /new], [Start new session],
      [/compact], [Summarize history],
      [/diff], [Review local changes],
      [/help | /init], [Help / Setup Instructions],
      [/model | /plan], [Select model / Implement plan],
      [/research], [Deep research (Web/Repo)],
      [/share], [Export to MD/HTML/Gist],
      [/undo | /tasks], [Rewind turn / Tasks],
      [/user | /usage], [Manage user / Session stats],
    )

    == IDE & Chat Context
    #table(
      [Type], [Variable / Shortcut],
      [Inline Trigger], [Alt + \\ (Win) \| Opt + \\ (Mac)],
      [Inline Cycle], [Alt + \] / \[ \| Opt + \] / \[ ],
      [Chat Variables], [\#block, \#file, \#selection, \#sym],
      [Chat Experts], [\@azure, \@github, \@vscode, \@workspace],
    )

    == Modes & Permissions
    #table(

      [Mode / Key], [Effect / Response],
      [Std / Plan / Auto], [Interactive / Design / Auto],
      [y / n], [Allow / Deny specific request],
      [! / \#], [Always Allow / Deny this session],
      [?], [Show detailed request info],
    )

    #v(3pt)
    #rect(fill: colors.light, stroke: 0.5pt + colors.accent, width: 100%, inset: 4pt)[
      *Tip:* `copilot completion <shell>` to enable tab completion.
    ]

    
    == Terminal Tab Management
    #table(
      [Shortcut], [Action],
      [Ctrl + Shift + T], [Open a new profile tab.],
      [Ctrl + Shift + Number (1-9)], [Open a new tab using a specific profile index.],
      [Ctrl + Alt + Number (1-9)], [Switch directly to a specific tab index.],
      [Ctrl + Tab], [Switch to the next tab.],
      [Ctrl + Shift + Tab], [Switch to the previous tab.],
      [Ctrl + Shift + D], [Duplicate the current tab.],
      [Ctrl + Shift + W], [Close the current tab.]
    )

    == Terminal Pane Management
    #table(
      [Shortcut], [Action],
      [Alt + Shift + Plus], [Split the current pane vertically.],
      [Alt + Shift + Minus], [Split the current pane horizontally.],
      [Alt + Shift + D], [Duplicate the current pane.],
      [Alt + Arrow Keys], [Move focus between panes.],
      [Alt + Shift + Arrow], [Resize the current pane.],
    )

    == Window and Global Shortcuts
    #table(
      [Shortcut], [Action],
      [Ctrl + Shift + N], [Start a new Windows Terminal window.],
      [Win + \'], [Summon Quake mode (toggle terminal visibility).],
      [F11 or Alt + Enter], [Toggle full-screen mode.],
      [Ctrl + ,], [Open the Settings UI.],
      [Ctrl + Alt + ,], [Open the defaults.json settings file.],
      [Ctrl + Shift + P], [Open the Command Palette.],
      [Ctrl + C / Ctrl + V], [Copy and paste selected text.],
      [Alt + F4], [Close the entire Windows Terminal window.],
    )
  ]
)
