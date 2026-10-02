// Focused coverage for custom sizing, variable list length, RTL, and print.
#import "../lib.typ": *

#set page(width: 11cm, height: 8cm, margin: 0.4cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #hand-drawn-bullet-panel(
    width: 7.8cm,
    min-height: 3.3cm,
    colour: rgb("#31B5D8"),
    stroke-colour: rgb("#202020"),
    stroke-width: 1.7pt,
    text-size: 9pt,
    items: (
      [First item with enough text to wrap naturally across the panel width.],
      [Second item in this shorter test list.],
    ),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#print-group[
  #align(center + horizon)[
    #hand-drawn-bullet-panel(
      width: 7.8cm,
      direction: rtl,
      items: (
        [نص عربي أول للاختبار واتجاه الكتابة من اليمين إلى اليسار.],
        [نص عربي ثانٍ للتأكد من محاذاة العلامات والنصوص.],
      ),
    )
  ]
]
