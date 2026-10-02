// Focused coverage for custom dimensions, stroke/icon placement, RTL, and print.
#import "../lib.typ": *

#set page(width: 12cm, height: 4.6cm, margin: 0.4cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #hand-drawn-business-callout(
    title: [Coordinate the work],
    body: [Share one clear action with the team.],
    width: 10cm,
    height: 1.9cm,
    icon-style: 2,
    icon-side: "end",
    colour: rgb("#38AFC5"),
    stroke-colour: rgb("#1D343A"),
    stroke-width: 1.4pt,
    title-size: 11pt,
    body-size: 8pt,
    title-offset-x: 0.03cm,
    body-offset-y: 0.02cm,
    icon-offset-y: -0.03cm,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#print-group[
  #align(center + horizon)[
    #hand-drawn-business-callout(
      body: [يساعد التواصل الواضح على تنسيق العمل ومشاركة الأفكار.],
      width: 10cm,
      height: 1.9cm,
      icon-style: 1,
      direction: rtl,
      colour: rgb("#EC4E60"),
    )
  ]
]
