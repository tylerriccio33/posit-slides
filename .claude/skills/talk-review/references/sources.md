# Source notes for talk-review

Long-form material behind SKILL.md. Read when a review needs the reasoning, not just the rule.

## Meadowlark coaching: openings and endings (Acacia Duncan)

**Opening**
- Start strong; it helps the audience relax. Most speakers spend 20–30 seconds sharing name, employer, and reading the slide. Not engaging; makes you seem nervous.
- Start with a declarative sentence. One line and you're in. Intro comes later.
- The intro shouldn't be procedural — make it connect with the audience (why you, why this, why them).

**Ending**
- Peak-end rule: for any experience, people most remember the peak and the end. The peak is the *emotional* peak — when the audience feels most strongly. Connect emotionally.
- End strong. Many speakers make the whole talk good and never think about the ending. Don't leave the audience confused or trail off with "well, that's it."
- Know the final line and practice it: a call to action, the key takeaway, or an echo of the talk's opening.
- The final two words should be "Thank you." It cues that you're officially done, and it makes them applaud.

## Meadowlark visuals session (Acacia Duncan + Tim Wilson, Posit Conf speaker prep)

**Framing**
- The goal of any talk is impact: the audience learns something, sees the world differently, or changes behavior. Slides don't drive impact; the talk does. Coaching spends the first two sessions on the idea, its connection to the audience, and structure — before any slides.
- Start from the assumption you don't need slides, then ask where a visual beats words. Three places slides excel: **hold attention**, **unlock understanding of complex things** (especially numbers — a heard number is retained ~4 seconds), and **improve retention** via dual encoding (audio + visual).
- Don't start slides until the outline is done, or done enough to know the one idea per slide.

**Memory & cognitive load (Tim Wilson)**
- Three memory stores: iconic (pre-cognitive visual register — notices big changes), short-term/working (~7±2 chunks per Miller; modern estimates lower), long-term (what's remembered an hour, a day, a week later). The goal of a talk is to get the essence into long-term memory; overfilling working memory blocks the thinking that encodes it.
- Demo: count the 5s in four rows of digits (hard) vs. the same rows with 5s bold and red (instant). A tiny fraction of pixels changed; cognitive load collapsed.

**Three tactics**
1. *Maximize the data-pixel ratio* (Tufte's data-ink → Stephen Few's data-pixel). Of non-background pixels, maximize the share that directly represents data/information. Everything else — decorative background charts, logos, redundant titles, chart borders, redundant axis titles, legends (always add load; never for one series), angled tick labels, gray major/minor gridlines, table stripes — is a declutter candidate. Iterate.
2. *Make the point impossible to miss.* Swap title/subtitle so the title is the single declarative takeaway ("Stimulus payments in May drove a savings spike") — a **McKinsey title**. Then the body only reinforces that (**vertical logic**). Highlight the thing that proves it. Reading only the titles across the deck should give a coherent narrative (**horizontal logic**) — the 5-minute version of a 45-minute talk. Even without visible titles, know the declarative point per slide.
3. *Keep attention* (Acacia): listening is hard work and the room is full of distraction engines. Re-engage via **emotion** (full-bleed images that evoke the feeling — nervousness, overwhelm, refreshment, dread, hope), **humor** (only if most will get it and the rest won't feel left out; easy-to-ignore subtle jokes are safe, memes/comics feel mandatory), and **drawing focus** (first full-screen image, changed background color + centered text as a repeated "new chapter" pattern, or a blank screen — Joe Cheng's Posit Conf 2022 keynote went blank for a personal story about self-doubt and the room was riveted).

**Text and tables**
- A paragraph on a slide means half the room reads instead of listens; you can't do both. Iterate: paragraph → "new preprocessing technique cut runtime 30–40%" → "30–40% runtime reduction" → "30–40%".
- Raw console output is high load. A polished table with stripes/gridlines is *prettier but lower data-pixel ratio*. Declutter, then add a bar representation so magnitude reads at a glance, then highlight the rows that make the point.

**Code**
- Default Quarto/reveal code rendering looks fine on a 27" monitor and is unreadable from the room. Step back 10 feet from your screen. Never be the "sorry about the eye chart" speaker.
- Go as big as possible; add line breaks; use pseudocode or a trimmed excerpt; share full code separately. Step through with line highlighting: prepare data → run model → view results.

**Q&A takeaways**
- Why are slides bad everywhere? *Normative conformity*: we imitate the decks we've suffered through. Resolve not to repeat them; when a talk is great, work out *why*.
- Bullets: no hard rule, but usually the problem is too much at once. Build them, keep to ~3, or reorient left-to-right in columns. Kill-the-bullets is the default.
- Editing out too much? Separate the **walking deck** (what's presented; reinforces only) from the **artifact** (appendix / hidden slides / a document sent afterwards). Tell the audience up front that detail exists.
- Forgetting a point in rehearsal: either it isn't needed, or make a slide that triggers it. Rehearse out loud; the further you get from speaker notes the better. Posit Conf does not provide a confidence monitor — prepare to present without notes.
- Colorblindness: test with a simulator (deuteranopia first); a designer palette isn't a guarantee. Ask reviewers *specific* questions ("was this hard to see?").
- Audio-processing difficulties: keep the big ideas on the slide so those listeners can follow the beats. Slides focus listening, they don't replace it.
- Best examples: talks by people who speak about data visualization — they understand how the brain processes information.

## TED / TEDx: three elements of a strong outline or script

- **Structure** — the foundation. Clear introduction, middle, and end.
- **Brevity** — the script fits the time slot or it feels cramped. Is there more than one major idea? Which is best? Hone to the one point; pick the talk format that suits it.
- **Purpose** — every point serves proving the main idea and its importance; each is understandable and its "why it matters" is explicit. The talk must be relevant and relatable to *this* audience; keep what the listener wants or needs to know in mind.

## Patrick Winston, MIT *How to Speak* (youtube.com/watch?v=Unzc731iCUY)

- Quality of speaking is determined by knowledge (K), then practice (P), then inherent talent (T) — a small factor.
- **Start**: don't open with a joke. Open with an *empowerment promise*: what they'll know at the end that they don't now.
- **Heuristics for landing ideas**: *cycle* the idea (three passes); *build a fence* around it so it isn't confused with a neighbor; *verbal punctuation* (enumerate, signpost, announce transitions so drifters can rejoin); *ask a question* and wait ~7 seconds.
- Time and place: ~11am, well-lit room, cased (visit the venue).
- Boards for informing (speed matches speaker), slides for exposing; slides should have few words, big font, no laser pointer (turns you from the audience), no clutter, no hapax legomena.
- **Ending**: final slide should be *contributions* — what you did — not "Questions?", not a collaborator list, not "The End". Winston says don't end on "thank you" (weak); *this skill overrides that* on the user's explicit house rule that "Thank you" is the applause cue. Reconcile: last content slide = contributions/takeaway, last spoken line = strong scripted close, last two words = "Thank you."

## MIT Vision Book, *How to Give Talks* (visionbook.mit.edu/how_to_give_talks.html)

- Short-talk skeleton: what problem → why interesting → why hard → key to your approach → how well it worked.
- Practice aloud, alone and in front of others; notes not scripts (write hard passages out to build confidence even if you don't read them); visit the venue; make sure the narrative arc flows section to section.
- Engagement: ask sub-questions before revealing the answer; layer with verbal signposts; vary speed and intensity; frame ideas as competing theories the evidence resolves.
- End with "Thank you" then solicit questions — not "any questions?" alone, which leaves the audience unsure whether to applaud.
- Audiences aren't there for you; they want information — deliver it clearly. The cure for nerves is preparation.

## GitHub Blog: tech-conference speaking

*9 tips to go from attendee to speaker* — compelling title (clear, concise, like a good subject line); define specific takeaways ("learn… understand… discover…"); show why the live format matters over a blog post; get feedback from someone outside your field; prioritize education over promotion; display genuine enthusiasm; research prior sessions.

*Cracking the code: wow the acceptance committee* — passion is magnetic and shows; action-oriented title that answers "would I attend this in five seconds?"; spell out target audience, learning outcomes, and event fit; show impact beyond stage time (what will attendees do differently tomorrow?).

Review use: these map to the **relevance/purpose** checks — can the speaker state, in one sentence each, who the talk is for and what they'll do differently afterward? If not, the talk doesn't yet have a purpose.
