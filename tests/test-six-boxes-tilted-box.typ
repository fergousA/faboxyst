// Focused regression: polygon slant, mirrored badge, Arabic RTL, and print.
#import "../lib.typ": *

#set page(width: 13.2cm, height: 8.8cm, margin: 0.35cm, fill: white)
#set text(font: "DejaVu Serif", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #six-boxes-tilted-box(
    title: [Target],
    body: [Define the audience and state the outcome clearly.],
    icon-style: 2, width: 7.4cm, badge-side: "left",
    colour: rgb("#1E6685"), stroke-colour: rgb("#4B3320"), stroke-width: 2.2pt,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #six-boxes-tilted-box(
    title: [الهدف الواضح],
    body: [يساعد الهدف الواضح على اختيار الخطوة التالية بثقة.],
    icon-style: 2, width: 7.4cm, badge-side: "start",
    direction: rtl, colour: rgb("#43834A"),
  )
]
#set text(lang: "en", dir: ltr)
#pagebreak()
#print-group[
  #six-boxes-tilted-box(
    title: [Target],
    body: [Define the audience and state the outcome clearly.],
    icon-style: 2, width: 7.4cm, badge-side: "left",
    colour: rgb("#1E6685"), stroke-colour: rgb("#4B3320"), stroke-width: 2.2pt,
  )
]
