// Focused regression: graphite hatch, readable copy, Arabic RTL, and print mode.
#import "../lib.typ": *

#set page(width: 13.2cm, height: 8.8cm, margin: 0.35cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #pencil-sketch-graphite-box(
    title: [One useful note],
    body: [A soft graphite hatch keeps longer notes easy to read.],
    width: 7.4cm, height: 3.10cm, stroke-colour: rgb("#494541"), stroke-width: 1.9pt,
    icon: [✦], icon-position: "top", icon-size: 0.30cm, icon-colour: rgb("#494541"),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #pencil-sketch-graphite-box(
    title: [ملاحظة مفيدة],
    body: [يمنح تظليل الرصاص مساحة هادئة لنص واضح ومقروء.],
    width: 7.4cm, height: 3.10cm, stroke-colour: rgb("#494541"), stroke-width: 1.9pt,
    icon: [✦], icon-position: "top", icon-size: 0.30cm, icon-colour: rgb("#494541"), direction: rtl,
  )
]
#set text(lang: "en", dir: ltr)
#pagebreak()
#print-group[
  #pencil-sketch-graphite-box(
    title: [One useful note],
    body: [A soft graphite hatch keeps longer notes easy to read.],
    width: 7.4cm, height: 3.10cm, stroke-colour: rgb("#494541"), stroke-width: 1.9pt,
    icon: [✦], icon-position: "top", icon-size: 0.30cm, icon-colour: rgb("#494541"),
  )
]
