# From dplyr to Polars: Migrating Languages Without Losing the Tidy Model

Quarto/revealjs port of the "Migrating Languages: Choose the easiest API"
talk (dplyr → Polars migration), baselined from the original PowerPoint
deck (`Dplyr to Polars.pptx`, kept out of version control).

This is a straight port, not a rewrite — some slides are intentionally
still rough/placeholder (marked `.todo` in `index.qmd`), matching the
state of the source deck. Speaker notes from the original are preserved
as reveal.js `.notes` divs (press `S` while presenting to view them).

## Requirements

- [Quarto](https://quarto.org/docs/get-started/) (`brew install --cask quarto`)

## Usage

```sh
make preview   # live-reload preview in the browser
make render    # render static HTML to docs/
make open      # render + open the rendered deck
make clean     # remove rendered/cache output
```

## Structure

- `index.qmd` — the deck (single revealjs file, one `##` per slide, `#`
  for section breaks)
- `_quarto.yml` — revealjs project config (theme, transitions, fragments)
- `theme/custom.scss` — minimal custom styling on top of the revealjs default theme
- `skills/` — reference skills pulled from
  [posit-dev/skills](https://github.com/posit-dev/skills) for authoring
  help: `quarto-authoring`, `brand-yml`, `alt-text`

## Animations

Using reveal.js built-ins, no custom JS:

- `transition: slide` between slides, `fragment: true` for incremental
  bullet reveals (`.incremental` divs)
- `auto-animate` available per-slide (`{auto-animate="true"}`) for
  element-level morph transitions where useful

## TODO

- [ ] Fill in placeholder slides (title slide art, CFG disclaimer, "define
      API" slide, closing "so what" table slide)
- [ ] Consider brand-yml theming via the `brand-yml` skill
- [ ] Alt text pass on any images once added (`alt-text` skill)
