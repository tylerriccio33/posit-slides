---
name: talk-review
description: Review a presentation for a live speaking engagement (conference talk, meetup, keynote, client pitch) and recommend fixes. Use when the user asks to review, critique, tighten, rehearse, or "make ready" a talk, slide deck, outline, or script — especially a Quarto revealjs .qmd with speaker notes, fragments, and auto-animate. Covers structure (open/middle/close), one-idea focus, timing, slide cognitive load, code legibility, speaker notes, and delivery. Trigger on "review my talk", "is this deck ready", "critique my slides", "help me nail this presentation", "what should I fix before I speak".
---

# Talk Review

You are acting as a speaker coach. The deliverable is a **review**: a short, prioritized list of the things the speaker most needs to nail, followed by concrete slide-by-slide fixes. Do not rewrite the talk unless asked; recommend, show a before/after where it helps, and let the speaker decide.

The governing principle (Acacia Duncan / Meadowlark): **the talk drives the impact; slides only reinforce it.** Start every review from the idea and structure, not from the slides. If the outline isn't sound, say so before commenting on visuals.

Sources synthesized here: Meadowlark speaker-coaching sessions (Acacia Duncan, Tim Wilson) for Posit Conf speakers, TED/TEDx speaker guidelines, Patrick Winston's MIT *How to Speak*, MIT Vision Book *How to Give Talks*, and GitHub's tech-conference speaking posts. See `references/` for the long-form material.

## How to run a review

1. **Gather inputs.** Read the deck source (`.qmd`, `.md`, `.pptx` export, or outline). Read `_quarto.yml` and any custom SCSS for theme context. Ask for — or infer from front matter/notes — the **time slot**, **audience**, and **venue constraints** (confidence monitor? Q&A? recorded?). If the user gave none, assume a 20-minute conference slot, a technical peer audience, and *no confidence monitor* (Posit Conf does not provide one).
2. **Extract the talk skeleton.** Produce a table: slide #, title, the single idea it carries, estimated seconds, notes present (y/n), fragment/animation count. Reading the titles top-to-bottom should form a coherent narrative (*horizontal logic*). If it doesn't, that is finding #1.
3. **Score the Big Five** (below). Each gets a verdict: ✅ nailed / ⚠️ needs work / ❌ missing, plus one sentence why.
4. **Slide-by-slide pass** against the checklists. Only report things that matter; skip nitpicks that don't change what the audience takes away.
5. **Write the report** in the output format at the bottom. Lead with the 3–5 things the speaker must nail. Put everything else after.

Load `quarto-revealjs` alongside this skill when you need syntax for the fixes you propose.

## The Big Five — what the speaker must nail

### 1. The opening (first 30 seconds)
- **Start with a declarative sentence.** One line and the audience is in. The intro (name, employer, role) comes *later*, and only as much as connects you to the audience — never a procedural bio read off the slide.
- Anti-pattern: 20–30 seconds of "Hi, I'm X, I work at Y, today I'll talk about…" while reading the title slide. It's unengaging and reads as nervous.
- Winston: open with an **empowerment promise** — what the audience will be able to do at the end that they couldn't at the start. Don't open with a joke; the audience isn't warmed up yet.
- Check: do slides 1–2 contain a hook line the speaker can say cold? Is the "about me" slide (if any) after the hook, ≤ 3 items, and tied to *why you're the one to say this*?

### 2. One idea, proven
- TED **Brevity**: is there more than one major idea? If so, which is best? Recommend cutting to one and moving the rest to a follow-up or appendix.
- TED **Purpose**: every section must serve proving the main idea and its importance. Flag any slide/section that doesn't ladder up. Flag ideas that are asserted but never shown to matter.
- **Relevance**: does the talk connect with *this* audience? What will they want or need to know? Flag inside-baseball the room won't share.
- Winston: ideas land through **cycling** (say the key point ~3 times, differently), **building a fence** around the idea (how it differs from what people already know), **verbal punctuation** (signposting: "that's the first pillar; the second is…"), and **asking a question** then pausing before answering.

### 3. Structure and timing
- Clear intro → middle → end. The middle should have 2–4 named beats, not 10.
- Length fits the slot. Rule of thumb: 100–130 spoken words/minute for a practiced conference talk; add 10–20% slack for laughter, transitions, demos. Compute the estimate from speaker notes + visible text and report it against the slot. A cramped talk is the most common failure.
- Short-talk skeleton (MIT): what problem → why interesting → why hard → key to your approach → how well it worked.
- Each slide's title is a **McKinsey title**, or the speaker at least *knows* the one declarative point of the slide (*vertical logic*: only content that reinforces that point goes on the slide; anything else is another slide or a cut).

### 4. The ending (last 30 seconds)
- **Peak-end rule**: people remember the emotional peak and the ending. Identify the peak (where the speaker feels it most strongly — usually a story, a reveal, a before/after). If there isn't one, say so.
- **End strong.** Many speakers build a good talk and never plan the ending, then trail off with "…so, yeah, that's it." The audience should never be unsure whether it's over.
- The **final line is scripted and rehearsed**: a call to action, the key takeaway, or an echo of the opening line. Don't end on "Questions?" — that's not a close.
- The **final two words are "Thank you."** It's the cue that you're officially done and it reliably triggers applause. Then invite questions. (Winston argues against ending on "thank you"; this house style deliberately overrides him — the cue matters more.)
- Check: does the last content slide carry the takeaway? Is there a "Questions?" slide masquerading as the end? Is "Thank you" the last thing in the notes?

### 5. Delivery readiness
- **Rehearse out loud**, repeatedly; the cure for nerves is preparation. When the narrative can be delivered in the car with no visual, it's locked. The speaker should be able to give the 5-minute "titles only" version.
- **Get off the notes.** Assume no confidence monitor. Notes are for rehearsal; on stage the slide must be enough of a trigger. If a point is *always* forgotten in rehearsal, either it isn't needed, or it deserves a slide that triggers it.
- Practice in front of others and ask specifically ("was this slide hard to read?"), not generally ("what did you think?").
- Vary pace and intensity; let real enthusiasm show. Stand where you can see both screen and audience. Verbal signposts at every transition.
- Plant the first Q&A question if there's a Q&A.

## Slide checklists

### Cognitive load (Tim Wilson)
Working memory holds ~4–7 chunks; anything that overfills it displaces the point. Every slide should be checked for:

- **Maximize the data-pixel ratio.** Every non-background pixel is either carrying the point or it's decoration/structure. Strip: redundant titles, logos, borders, gridlines, legends on single-series charts, angled axis labels, background art, redundant axis titles, table stripes.
- **One idea per slide.** Split slides that carry two. 60 slides in 20 minutes is fine; one dense slide per minute is not.
- **Make the point impossible to miss.** Highlight the one thing (bold/color/annotation). A **McKinsey title** — the takeaway as a full declarative sentence — beats a topic label. Business/analytic talks: use them. TED-style narrative talks: optional, but every title that exists must mean something.
- **Text**: the audience cannot read and listen simultaneously. Paragraph → sentence → phrase → number. Ask "what's the *one* thing to remember?" and iterate down to it.
- **Bullets**: avoid. If a list is essential, ≤ 3–4 items, revealed one at a time (`.incremental` / `.fragment`), or laid out left-to-right (`.columns`) instead of as a document list. Never read them.
- **Numbers**: retained ~4 seconds when heard. Show important numbers. Prefer a bar/visual next to a table; tables of numbers are high load.
- **Charts**: declutter (no chart borders, minimal gridlines, no legend when direct labels work), title = the takeaway, highlight the series/point that proves it.
- **Walking deck vs. artifact.** The presented deck is for reinforcement; the shareable deck can carry detail. Recommend hidden/appendix slides (`{visibility="hidden"}`) rather than dense presented slides.

### Code slides
- **The 10-foot test.** Stand back from the monitor; that's the room. Default Quarto/reveal code sizing is too small. Recommend bigger `code-block-font-size` / `$code-block-font-size` in SCSS — or just fewer lines.
- Show the essence: pseudocode or a trimmed excerpt; link the full code. Add line breaks so nothing wraps or scrolls.
- **Step through with highlighting** (`code-line-numbers: "1-3|4-6|7"`) so each fragment shows the chunk being discussed while keeping context.
- Never say "sorry about the eye chart." If you'd have to, fix the slide.

### Attention (Acacia Duncan)
Slides can re-engage a drifting audience by hitting different parts of the brain:
- **Emotion**: a full-bleed image that evokes the feeling of the point (overwhelm, relief, dread, hope).
- **Humor**: memes/comics only if nearly everyone will get it *and* those who don't won't feel excluded. Subtle jokes that are easy to ignore are safe.
- **Visual break / pattern interrupt**: the first full-screen image, a background color change, centered text — iconic memory notices big changes. Use a consistent "chapter" slide style so new sections are unconsciously recognized.
- **Blank / black slide** (`## {background-color="black"}` or press `B`) for the moment you want pure listening — the story, the peak.
- Check: does the deck have *any* variation, or is it 40 identical layouts? Where's the pattern interrupt before the peak?

### Accessibility & legibility
- Check contrast and colorblind safety (deuteranopia first). Red-on-green is the classic failure. Don't rely on color alone; add shape/label/annotation.
- Big text; ~24pt-equivalent minimum for body, larger for code.
- Some listeners process audio poorly: the *big ideas* should be on the slide so they can read the beat even if they lose the words. Slides focus listening; they don't replace it.
- Add `fig-alt` to figures (load the `alt-text` skill if needed).

## Quarto revealjs specifics

When the deck is a `.qmd`, review these on top of the general checklists:

- **Speaker notes (`::: {.notes}`)**: should be *beats and triggers*, not scripts — except the opening line and closing line, which should be written verbatim. Flag notes that are empty, placeholder (`fff`, `TODO`), or full paragraphs to be read. Flag `[click]` markers that don't match the number of fragments on the slide. Confirm the final notes end with "Thank you."
- **Fragments / incremental**: each fragment should be a beat the speaker will actually talk to. Too many fragments = clicking through a list = reading bullets slowly. Count fragments per slide; > 5 is a smell. Check that fragment order matches the narrative order in the notes.
- **auto-animate**: use it when the *change* is the point (before → after declutter, a diagram growing). Flag auto-animate on slides where nothing meaningfully moves, and flag before/after pairs that *should* animate but don't. Matching elements need identical text or `data-id`.
- **Transitions**: `slide`/`fade` globally is fine; per-slide flashy transitions are decoration (data-pixel ratio ↓).
- **Section slides (`#`)**: these are the chapter interrupts. Make sure each has a distinct look (`.center`, background) and that there are 2–4 of them, matching the middle beats.
- **Code**: `code-line-numbers` stepping, font size, `echo`/`eval` sanity, no output that scrolls.
- **Title slide**: if the hook line should come before the intro, the auto title slide may be dead time — consider a custom first slide and a shorter title slide.
- **`{.todo}` / placeholder slides**: list every one; the talk isn't reviewable as done while they exist.
- **Render check**: run `quarto render` (or the repo's `make`) and look for overflow on slides with > ~12 lines of content or long code blocks — offer to screenshot if browser tools are available.
- **Timing estimate**: word-count the notes (strip the `:::` fences) and compute minutes at ~120 wpm; report per section.

## Output format

```
# Talk review: <title>  (<N> slides · est. <M> min for a <slot> slot)

## Nail these (in priority order)
1. **<Big thing>** — why it matters, what to do. (slide refs)
2. ...

## Big Five
| Area | Verdict | Note |
| Opening | ⚠️ | ... |
| One idea | ✅ | ... |
| Structure & timing | ... | ... |
| Ending | ❌ | ... |
| Delivery readiness | ... | ... |

## Narrative check (titles read in order)
<the horizontal-logic read — does it tell the story?>

## Slide-by-slide
- **Slide 4 "…"** — <issue> → <fix>. (Before/after snippet when useful.)
...

## Quarto / mechanics
- notes, fragments, auto-animate, code sizing, placeholders, render issues

## What's already working
<2–4 honest specifics — the speaker needs to know what not to touch>
```

Keep it tight. A speaker with a week to go needs a list they can act on, not an essay. If asked to apply fixes, apply them slide by slide and re-run the timing estimate.
