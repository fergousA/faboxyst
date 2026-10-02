// One hand-drawn folded ribbon with genuine Arabic RTL text.
#import "../lib.typ": *

#set page(width: 12cm, height: 4.4cm, margin: 0.4cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)
#set text(lang: "ar", dir: rtl)

#align(center + horizon)[
  #hand-drawn-folded-ribbon(
    title: [عنوان واضح],
    width: 9cm,
    height: 1.55cm,
    colour: rgb("#40B2D5"),
    direction: rtl,
    fold-size: 0.72cm,
  )
]
