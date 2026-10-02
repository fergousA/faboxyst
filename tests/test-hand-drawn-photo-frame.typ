// Focused coverage for frame sizing, custom content, RTL, and print mode.
#import "../lib.typ": *

#set page(width: 11cm, height: 8cm, margin: 0.4cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #hand-drawn-photo-frame(
    width: 7.1cm,
    height: 5cm,
    colour: rgb("#D3EEF7"),
    stroke-colour: rgb("#242222"),
    stroke-width: 1.7pt,
    padding: 0.2cm,
    placeholder: [Custom outline],
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#print-group[
  #align(center + horizon)[
    #hand-drawn-photo-frame(
      content: [#rect(width: 1.1cm, height: 0.8cm, fill: rgb("#4AB8D5"))],
      width: 7.1cm,
      height: 5cm,
      direction: rtl,
      placeholder: [مكان صورتك],
    )
  ]
]
