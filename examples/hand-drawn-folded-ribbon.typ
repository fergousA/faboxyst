// One hand-drawn folded title ribbon in color (LTR).
#import "../lib.typ": *

#set page(width: 12cm, height: 4.4cm, margin: 0.4cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #hand-drawn-folded-ribbon(
    title: [Lorem ipsum],
    width: 9cm,
    height: 1.55cm,
    colour: rgb("#FFB52F"),
    fold-size: 0.72cm,
  )
]
