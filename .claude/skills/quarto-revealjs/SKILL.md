---
name: quarto-revealjs
description: Use when authoring, editing, or troubleshooting a Quarto revealjs presentation (format: revealjs, .qmd slide decks). Covers slide syntax, incremental lists, columns, speaker notes, code output placement, backgrounds, transitions, auto-animate, navigation modes, chalkboard/multiplex presenting features, and built-in/custom SCSS themes. Trigger on requests like "add a slide", "make this incremental", "add speaker notes", "change the reveal theme", "add a background image to a slide", "fix slide overflow", "add auto-animate", "export to PDF".
metadata:
  source: https://quarto.org/docs/presentations/revealjs/ (+ presenting.html, advanced.html, themes.html)
license: MIT
---

# Quarto revealjs Presentations

Reference for building `.qmd` slide decks that render with `format: revealjs`.
This repo's deck is `index.qmd` / `_quarto.yml`.

## Slide structure

- `## Heading` → new slide
- `# Heading` → section title slide
- `---` → untitled slide break
- Title slide is auto-generated from `title`/`author` in front matter; omit both to skip it.

```markdown
---
title: "Habits"
author: "John Doe"
format: revealjs
---

# Morning Section

## Getting up
- Turn off alarm
- Get out of bed

## Breakfast
- Eat eggs
- Drink coffee
```

## Incremental reveal & pauses

Global:
```yaml
format:
  revealjs:
    incremental: true
```

Per-block override:
```markdown
::: {.incremental}
- Item one
- Item two
:::

::: {.nonincremental}
- Item one
:::
```

Pause mid-slide (splits into two reveal fragments) with a line containing only `. . .`.

## Columns

```markdown
:::: {.columns}
::: {.column width="40%"}
Left content
:::
::: {.column width="60%"}
Right content
:::
::::
```

## Overflow handling

Per-slide: `## Title {.smaller}` or `## Title {.scrollable}`.
Global: `smaller: true` / `scrollable: true` under `format: revealjs`.
If images misbehave inside `.scrollable` (auto-stretch clips them): set `auto-stretch: false` globally, or add `.r-stretch` to the image, or `.nostretch` on the slide.

## Speaker notes, asides, footnotes

```markdown
::: {.notes}
Only visible in speaker view (press S).
:::

::: aside
Smaller peripheral commentary.
:::

- Point one ^[Footnote text]
```
`reference-location: document` moves footnotes off-slide (default is `slide`).

## Footer & logo

```yaml
format:
  revealjs:
    footer: "Footer text"
    logo: logo.png
```
Disable per slide: `## Title {footer=false}`. Custom per-slide footer: `::: footer ... :::`.

## Backgrounds (slide-heading attributes)

```markdown
## Title {background-color="aquamarine"}
## Title {background-gradient="linear-gradient(to bottom, #283b95, #17b2c3)"}
## Title {background-image="img.png" background-size="100px" background-repeat="repeat" background-opacity="1"}
## Title {background-video="clip.mp4" background-video-loop="true" background-video-muted="true"}
## Title {background-iframe="https://example.com" background-interactive="true"}
```
Untitled slide with just a background: `## {background-color="aquamarine"}`.

Title-slide-only background goes in front matter, not on a heading:
```yaml
title-slide-attributes:
  data-background-image: /path/to/image.png
  data-background-size: contain
  data-background-opacity: "0.5"
```

## Transitions

```yaml
format:
  revealjs:
    transition: slide            # none | fade | slide | convex | concave | zoom
    background-transition: fade
    transition-speed: fast       # default | fast | slow
```
Per-slide override: `## Title {transition="fade" transition-speed="fast"}`.

## Auto-animate

Mark two adjacent slides `{auto-animate="true"}`; matching elements (by tag or `data-id`) animate between them (position, `font-size`, `color`, `margin-top`, etc.).
```yaml
format:
  revealjs:
    auto-animate-easing: ease-in-out
    auto-animate-unmatched: false
    auto-animate-duration: 0.8
```

## Fragments (step-through reveal)

Wrap a span/div in `.fragment`, optionally combined with an effect class:
`fade-out`, `fade-up`, `fade-down`, `fade-left`, `fade-right`, `grow`, `shrink`, `strike`, `highlight-red`, `highlight-green`, `highlight-blue`.
Control order with `fragment-index="N"`.

## Layout helpers

- `.absolute` + `top`/`left`/`bottom`/`right` — free positioning
- `.r-stack` — stack elements, reveal one at a time in place
- `.r-fit-text` — auto-size text to fill width
- `.r-stretch` — resize element to fill remaining vertical space
- `.center` — vertically center slide content

## Navigation mode

```yaml
navigation-mode: linear   # default | vertical | grid
controls-layout: bottom-right
controls-tutorial: true
touch: false              # disable swipe nav
```
`vertical` mode requires `#` (horizontal) / `##` (vertical) heading nesting.
Hide a slide: `## Title {visibility="hidden"}`; keep it navigable but uncounted: `visibility="uncounted"`.

## Code blocks in slides

Line highlighting: `` ```{.python code-line-numbers="6-8"} `` — comma list (`"7,9"`) or progressive reveal (`"|6|9"`).

Executable chunk output placement (`output-location`): `fragment` (step through), `slide` (own slide), `column`, `column-fragment`. Presentations default `echo: false`; set `#| echo: true` to show code.

```markdown
```{r}
#| echo: true
#| output-location: slide
library(ggplot2)
ggplot(airquality, aes(Temp, Ozone)) + geom_point()
```
```

## Themes

Built-in: `beige`, `blood`, `dark`, `default`, `dracula`, `league`, `moon`, `night`, `serif`, `simple`, `sky`, `solarized`.

```yaml
format:
  revealjs:
    theme: dark
```

Layer a custom SCSS file on top of a built-in theme:
```yaml
format:
  revealjs:
    theme: [default, custom.scss]
```

`custom.scss` has two sections — variables, then rules (scope with `.reveal .slide` to override defaults):
```scss
/*-- scss:defaults --*/
$body-bg: #191919;
$body-color: #fff;
$link-color: #42affa;

/*-- scss:rules --*/
.reveal .slide blockquote {
  border-left: 3px solid $text-muted;
  padding-left: 0.5em;
}
```
Key variables: `$body-bg`, `$body-color`, `$link-color`, `$selection-bg`, `$font-family-sans-serif`, `$presentation-font-size-root`, `$presentation-h1-font-size`…`$presentation-h4-font-size`, `$code-block-bg`, `$code-block-font-size`.

This repo already has a `_brand.yml`-driven theme (see the `brand-yml` skill) — prefer editing that over hand-rolling a new SCSS theme unless the ask is reveal-specific styling brand.yml doesn't cover.

## Presenting & export

| Action | Key |
|---|---|
| Next / previous slide | → / ← (or Space / P) |
| Ignore fragments while navigating | Alt+→ / Alt+← |
| First / last slide | Shift+→ / Shift+← |
| Fullscreen | F |
| Navigation menu | M |
| Jump to slide N | G, type N, Enter |
| Overview (thumbnails) | O |
| Speaker view (notes, timer, next-slide preview) | S |
| Toggle print/PDF view | E |

**Export to PDF:** press `E`, then Ctrl/Cmd+P → Save as PDF, Landscape, no margins, enable background graphics.

**Self-contained HTML:** `embed-resources: true` (incompatible with chalkboard).

Slide numbers: `slide-number: true`, format via `c/t` (default) / `c` / `h/v` / `h.v`; `show-slide-number: print|all|speaker`.

Auto-advance: `auto-slide: 5000` (ms), `loop: true`, `auto-slide-stoppable: false`; per-slide override `{autoslide="2000"}`.

Chalkboard (freehand drawing over slides):
```yaml
format:
  revealjs:
    chalkboard: true
```
Keys: C (notes canvas), B (chalkboard), Backspace (reset all), Del (clear slide), X/Y (cycle color), D (download drawings).

Multiplex (separate speaker-control file synced to audience view):
```yaml
format:
  revealjs:
    multiplex: true
```
Produces `<file>.html` (audience) and `<file>-speaker.html` (speaker).

## Gotchas

- `syntax-highlighting: idiomatic` isn't supported for revealjs — falls back to Skylighting with a warning; pick a named theme instead.
- `.panel-tabset` tabs only show the *first* tab's content when printed to PDF.
- `embed-resources: true` and `chalkboard: true` cannot be used together.
- Vertical `navigation-mode` needs both heading levels present (`#` for horizontal stacks, `##` for the vertical slides within each) — a deck using only `##` stays linear even with `navigation-mode: vertical` set.
