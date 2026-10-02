// Focused coverage for fold side/size, custom stroke, RTL mirroring, and print.
#import "../lib.typ": *

#set page(width: 12cm, height: 4.4cm, margin: 0.4cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #hand-drawn-folded-ribbon(
    title: [Outline test],
    width: 8.4cm,
    height: 1.5cm,
    fold-side: "start",
    fold-size: 0.75cm,
    colour: rgb("#EC4E60"),
    stroke-colour: rgb("#242222"),
    stroke-width: 1.2pt,
    title-size: 13pt,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#print-group[
  #align(center + horizon)[
    #hand-drawn-folded-ribbon(
      title: [عنوان واضح],
      width: 8.4cm,
      height: 1.5cm,
      direction: rtl,
      fold-side: "end",
      fold-size: 0.75cm,
      colour: rgb("#FFB52F"),
    )
  ]
]
