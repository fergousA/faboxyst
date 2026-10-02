// Focused regression: irregular oval, title/body layout, Arabic RTL, and print.
#import "../lib.typ": *

#set page(width: 13.2cm, height: 8.8cm, margin: 0.35cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #pencil-sketch-ellipse(
    title: [One clear idea],
    body: [Circle a useful thought and come back to it later.],
    width: 7.4cm, height: 3.20cm, stroke-colour: rgb("#80501F"), stroke-width: 2.3pt,
    icon: [✦], icon-position: "start", icon-size: 0.32cm, icon-colour: rgb("#80501F"),
    colour: rgb("#D99042"),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #pencil-sketch-ellipse(
    title: [فكرة واضحة],
    body: [أبرز الفكرة، وأضف ملاحظة قصيرة، ثم عد إليها عندما تتطور.],
    width: 7.4cm, height: 3.20cm, direction: rtl, stroke-colour: rgb("#365D39"), stroke-width: 2.2pt,
    icon: [✦], icon-position: "end", icon-size: 0.32cm, icon-colour: rgb("#365D39"),
    colour: rgb("#43834A"),
  )
]
#set text(lang: "en", dir: ltr)
#pagebreak()
#print-group[
  #pencil-sketch-ellipse(
    title: [One clear idea],
    body: [Circle a useful thought and come back to it later.],
    width: 7.4cm, height: 3.20cm, stroke-colour: rgb("#80501F"), stroke-width: 2.3pt,
    icon: [✦], icon-position: "start", icon-size: 0.32cm, icon-colour: rgb("#80501F"),
    colour: rgb("#D99042"),
  )
]
