// faboxyst 0.3.0 — package thumbnail (square 1200x1200): the 0.3.0 infographic
// cards, stacks and sketched frames, over a strip of classic boxes.
//   typst compile thumbnail.typ --root . --package-path ../../.. --format png --ppi 144 thumb-2x.png
//   magick thumb-2x.png -resize 1200x1200 thumbnail.png
#import "lib.typ": *

#set page(width: 1200pt, height: 1200pt, margin: 0pt,
  fill: gradient.linear(rgb("#FBFAF6"), rgb("#EFEDE4"), angle: 160deg))
#set text(lang: "en", size: 7pt)
#let L = [Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh.]
#let S3 = ((title: [Analysis], body: L, icon: [★]), (title: [Plan], body: L, icon: [✦]), (title: [Build], body: L, icon: [●]))
#let W = 11.6cm
#let cell(h, body) = block(width: 100%, height: h, breakable: false, layout(size => {
  let m = measure(body, width: size.width)
  let k = calc.min(1.0, size.width / m.width, size.height / m.height)
  align(center + horizon, scale(k * 100%, reflow: true, body))
}))
#block(width: 100%, height: 100%, inset: (x: 42pt, top: 34pt, bottom: 26pt), {
  set align(center)
  text(size: 46pt, weight: "bold", fill: rgb("#1A1A1A"), font: ("DejaVu Serif",), tracking: 1.2pt)[faboxyst]
  h(10pt)
  text(size: 14pt, fill: rgb("#6B7280"), font: ("DejaVu Sans",))[boxes, paper, ornaments & infographics for Typst — 0.3.0]
  v(12pt)
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 14pt, row-gutter: 8pt,
    cell(8cm, puzzle-tab-cards(steps: S3, width: W)),
    cell(8cm, half-disc-tab-cards(steps: S3, width: W)),
    cell(8cm, circle-head-outline-cards(steps: S3, width: W)),

    cell(8cm, twisted-ribbon-rows(steps: S3, width: W, row-height: 1.9cm)),
    cell(8cm, brush-stroke-rows(steps: S3, width: W, row-height: 1.9cm)),
    cell(8cm, pencil-frame-flow([#text(15pt, weight: "bold")[PROJECT]], steps: ([Plan], [Do], [Check], [Act]), width: 4.4cm, height: 4.4cm)),

    cell(8cm, index-notebook(title: [PLAN], steps: S3, width: W, height: 8cm)),
    cell(8cm, film-strip(frames: ([One], [Two], [Three], [Four]), width: W)),
    cell(8cm, vintage-frame(window: "twin-oval", width: W, height: 4.3cm, ([Left], [Right]))),

    cell(8cm, charcoal-frame(shape: "ellipse", width: 8cm, height: 5.2cm)[Charcoal]),
    cell(8cm, crayon-frame(width: W, height: 4.2cm)[Crayon]),
    cell(8cm, pencil-sketch-frame(width: W, height: 4.2cm)[Pencil]),
  )
  v(1fr)
  line(length: 100%, stroke: 0.6pt + rgb("#C9C5B6"))
  v(10pt)
  grid(columns: (1fr,) * 6, column-gutter: 10pt,
    cell(2.6cm, fabox(title: [Title], width: 100%)[fabox]),
    cell(2.6cm, postit(title: [Note], width: 92%)[postit]),
    cell(2.6cm, khatambox(title: [Titre], badge: [1])[khatambox]),
    cell(2.6cm, zellijbox(title: [Titre])[zellijbox]),
    cell(2.6cm, neon[neon]),
    cell(2.6cm, text(lang: "ar", dir: rtl, leconbox(num: 1, min-height: 2.4em, text-size: 1.3em)[بنية وهندسة]))
  )
  v(8pt)
  text(size: 10pt, fill: rgb("#9AA1AB"), font: ("DejaVu Sans",))[faboxyst 0.3.0 · 27 new infographic and sketched styles · RTL-aware · pure Typst]
})
