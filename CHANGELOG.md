# Changelog

## 0.1.0 — 2026-08-23

First public cut of **faboxyst**: a Typst-Universe package of *boxes only*,
in the spirit of LaTeX *tcolorbox*.

- `#show: faboxyst.with(theme: …)` is a theme show rule, not a document class.
- Public commands: `#fabox`, `#fabox-sign`, `#fabox-note`.
- **No fonts are bundled.** Optional faces (xkcd, Bevan, Comic Neue, Tajawal,
  Lalezar) are used when installed; otherwise DejaVu.
- Social-network posts live in the separate package **socialyst**.
- **`sashbox` / `ruban`** — folded ribbon banners (`flat` / `arch` / `hang`),
  with `incline` for the bow and `rough` for a closed sloppy-box outline.
- **`ticket` / `ticketbox`** — stub coupon, leading half-disc, trailing hole.
  Both features flip in RTL. Arabic-Indic / Persian digits become Western 0–9.
- Textbook plates: icon, crest, ribbon, helix, swoosh, circuit, key, ring,
  punch, planner, file, stub, stack, callout, tape, chalk, marker, screw.
- Universe-style English manual (`manual.typ` / `manual.pdf`).
