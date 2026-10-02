// One colored band with an overlapping circular icon medallion.
#import "../lib.typ": *

#set page(width: 13.2cm, height: 8.8cm, margin: 0.35cm, fill: white)
#set text(font: "DejaVu Serif", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #six-boxes-template-box(
    title: [Business],
    body: [Helping teams deliver useful products and services.],
    icon-style: 0,
    width: 7.4cm,
    height: 1.48cm,
    badge-size: 1.74cm,
    icon-side: "right",
    text-align: "center",
    colour: rgb("#F1840B"),
  )
]
