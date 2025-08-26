---
title: "Mermaid Diagrams"
date: 2025-08-26
weight: 50
---

The theme supports [Mermaid](https://mermaid.js.org/) diagrams for creating flowcharts, sequence diagrams, class diagrams, and more.

## Enabling Mermaid

To enable Mermaid diagrams in a post, add `mermaid: true` to your front matter:

```yaml
---
title: "Your Post Title"
date: 2025-08-26
mermaid: true
---
```

## Using the Mermaid Shortcode

Use the `mermaid` shortcode to include diagrams in your content:

```markdown
{{</* mermaid */>}}
graph TD
    A[Start] --> B{Decision}
    B -->|Yes| C[Action 1]
    B -->|No| D[Action 2]
{{</* /mermaid */>}}
```

## Configuration Options

You can customize Mermaid globally in your `config.toml`:

```toml
[Params.mermaid]
  theme = "default"
  primaryColor = "#ff0000"
  primaryTextColor = "#fff"
  primaryBorderColor = "#ff0000"
  lineColor = "#333333"
```

Or override settings per post in the front matter:

```yaml
---
title: "Your Post Title"
mermaid: true
mermaidTheme: "dark"
mermaidPrimaryColor: "#00ff00"
---
```

## Available Parameters

### Global Parameters (in config.toml)

- `mermaidPath`: Custom CDN URL for Mermaid.js (default: "https://cdn.jsdelivr.net/npm/mermaid@10.9.1/dist/mermaid.min.js")

### Per-Post Parameters (in front matter)

- `mermaid`: Enable Mermaid for this post (boolean)
- `mermaidTheme`: Theme name (string) - options: `default`, `neutral`, `dark`, `forest`, `base`
- `mermaidPrimaryColor`: Primary color (hex color)
- `mermaidPrimaryTextColor`: Primary text color (hex color)
- `mermaidPrimaryBorderColor`: Primary border color (hex color)
- `mermaidLineColor`: Line color (hex color)
- `mermaidSectionBkgColor`: Section background color (hex color)
- `mermaidAltSectionBkgColor`: Alternate section background color (hex color)
- `mermaidGridColor`: Grid color (hex color)
- `mermaidSecondaryColor`: Secondary color (hex color)
- `mermaidTertiaryColor`: Tertiary color (hex color)

## Supported Diagram Types

Mermaid supports many diagram types including:

- Flowcharts
- Sequence diagrams
- Class diagrams
- State diagrams
- Entity relationship diagrams
- User journey diagrams
- Gantt charts
- Pie charts
- Git graphs

For detailed syntax, visit the [Mermaid documentation](https://mermaid.js.org/intro/).
