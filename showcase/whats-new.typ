#import "_helpers.typ": *

#set page(paper: "a4", margin: (x: 1.15cm, y: 1.2cm),
  header: text(size: 8pt, fill: luma(120))[faboxyst 0.3.0 · what’s new],
  footer: context align(center, text(size: 8pt, fill: luma(120), counter(page).display())))
#set text(font: "DejaVu Sans", size: 10pt)

#cmd-title[What’s new  ·  0.3.0]
#note-line[The *antique* vintage effect: aged paper, sepia ink, Garamond, broad-nib engraving drawn with *nibart*; the sketch engine is pure Typst (no WebAssembly).]

#v(8pt)
#grid(columns: (1fr, 1fr), gutter: 12pt,
  fabox(title: [Theme], colour: rgb("#786A58"), width: 100%)[
    `#show: faboxyst.with(theme: themes.antique)` — every box in sepia ink
    (#raw("#272119")) on aged cream paper (#raw("#F3EAD9")), Garamond-first
    font stack, nearly-straight engraved strokes (`roughness: 0.35`).
  ],
  fabox(title: [Engraving], colour: rgb("#A5402F"), width: 100%)[
    `#cadre-grave` / `#engraved-frame` (double rule + corner diamonds),
    `#regle-gravee` / `#engraved-rule` (plain, dashed, pressured),
    `#engraved`, `#nib-stroke`, `#nib-pen`, `#nib-polylines` — true
    calligraphic nibs drawn by *nibart*.
  ],
)
#v(8pt)
#grid(columns: (1fr, 1fr), gutter: 12pt,
  fabox(title: [Plates], colour: rgb("#3E5C6E"), width: 100%)[
    `#planche` / `#plate-page` and `#brevet` / `#patent-page` — full-page
    vintage styles (smallcaps number, Garamond title, italic subtitle /
    patent office, number, date). `#legende-figure`, `#etiquette-gravee`,
    `#antique-notes` / `#antique-note`.
  ],
  fabox(title: [Engine], colour: luma(80), width: 100%)[
    No WebAssembly any more: the sketch engine (`src/sketchcore.typ`) is pure
    Typst and the antique register is drawn with the *nibart* package. The
    page frames (`*-pages`) moved to *nibframe*; the manifest licence is `MIT`.
  ],
)

#v(8pt)
#fabox(title: [The vintage: parameter], colour: rgb("#4C7A4C"), width: 100%)[
  Every box, frame, meter, pictogram and cover now takes `vintage: true`
  (plus `vintage-pen: (a, b, angle)` to override the nib): only the
  *strokes* are redrawn with the elliptical nib — fills and the native
  palette stay untouched. 55+ families, from `leconbox` and the ten
  `meter` styles to `vintageframe` (8 styles), `vintagebox` (6 plaques)
  and `book-cover` (10 styles — a double engraved rule around the cover).
]

#v(6pt)
#grid(columns: (1fr, 1fr, 1fr, 1fr), column-gutter: 0.4cm, align: top + center,
  pinbox(diameter: 1.9cm)[Chimie],
  pinbox(diameter: 1.9cm, vintage: true)[Chimie],
  meter(3, style: "cible", size: 1.0cm),
  meter(3, style: "cible", size: 1.0cm, vintage: true),
)
#v(2pt)
#align(center, text(size: 8pt, fill: luma(110))[native   ·   #raw("vintage: true")   ·   native   ·   #raw("vintage: true")  —  the strokes alone are redrawn, the fills stay])

#v(10pt)
#fabox(title: [Content sizing and inline marks], colour: rgb("#2A6F9E"), width: 100%)[
  Content boxes now hug their measured body with `width: auto` and
  `height: auto`; `plankbox` also accepts `leading:` and explicit
  `height:`. Inline marks accept `fill:` for `fan` / `bracket` and
  `inset:` for the hand-drawn kinds.
]
#v(5pt)
#grid(columns: (1fr, 1fr, 1fr), gutter: 10pt,
  mark(kind: "fan", colour: rgb("#7B2CBF"), fill: rgb("#D8B4FE"), inset: 0.08em)[filled fan],
  mark(kind: "bracket", colour: rgb("#006D77"), fill: rgb("#BEE3DB"), inset: (x: 0.12cm, y: 0.08cm))[filled bracket],
  mark(kind: "circle", colour: rgb("#E76F00"), inset: 0.10em)[vertical inset],
)

#v(10pt)
#engraved-frame[
  #set text(size: 9pt)
  The frame above is the envelope of an elliptical nib carried around the
  rectangle — thin where the pen runs with the line, full where it is
  crossed. Everything in this corner of the manual is now *slightly older
  than its metadata suggests*.
]
#v(6pt)
#legende-figure[Fig. 0 — #raw("cadre-grave") under #raw("themes.antique"); see #raw("examples/antique.typ") and #raw("examples/patent.typ").]

#v(10pt)
#sig[
```typ
#import "../lib.typ": *
#show: faboxyst.with(theme: themes.antique)
#show: planche.with(number: [Plate I], title: [Elementary Solids])
#cadre-grave[A double engraved rule, corner diamonds included.]
#regle-gravee(from: (0pt, 0pt), to: (12cm, 0pt), dash: (lengths: (14pt, 6pt)))
```
]
