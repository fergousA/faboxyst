// Focused regression: top tab, bottom pointer, Arabic RTL caption, and print.
#import "../lib.typ": *

#set page(width: 13.2cm, height: 8.8cm, margin: 0.35cm, fill: white)
#set text(font: "DejaVu Serif", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #six-boxes-pointer-card(
    title: [Target],
    body: [Know the audience and define the outcome.],
    icon-style: 2, width: 2.9cm, height: 1.82cm, box-size: 1.78cm,
    colour: rgb("#1E6685"), stroke-colour: rgb("#233C52"), stroke-width: 2.4pt,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #six-boxes-pointer-card(
    title: [الهدف الواضح],
    body: [يساعد الهدف الواضح على اختيار الخطوة التالية بثقة.],
    icon-style: 2, width: 2.9cm, height: 1.82cm, box-size: 1.78cm,
    direction: rtl, colour: rgb("#1E6685"), stroke-colour: rgb("#233C52"), stroke-width: 2.4pt,
  )
]
#set text(lang: "en", dir: ltr)
#pagebreak()
#print-group[
  #six-boxes-pointer-card(
    title: [Target],
    body: [Know the audience and define the outcome.],
    icon-style: 2, width: 2.9cm, height: 1.82cm, box-size: 1.78cm,
    colour: rgb("#1E6685"), stroke-colour: rgb("#233C52"), stroke-width: 2.4pt,
  )
]
