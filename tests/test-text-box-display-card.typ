// Focused regression coverage for one display card, RTL text, and print.
#import "../lib.typ": *

#set page(width: 6cm, height: 7.7cm, margin: 0.4cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #text-box-display-card(
    title: [CUSTOM LABEL],
    body: [A concise test sentence checks the upper icon tile, body copy, and faceted footer.],
    width: 4.8cm, height: 6.8cm, colour: rgb("#F68C1F"),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #text-box-display-card(
    title: [اختبار البطاقة],
    body: [نص عربي قصير لاختبار اتجاه الكتابة والمحاذاة داخل البطاقة.],
    width: 4.8cm, height: 6.8cm, direction: rtl,
    colour: rgb("#C9361F"), text-colour: white, icon-style: 2,
  )
]
#pagebreak()
#print-group[
  #align(center + horizon)[
    #text-box-display-card(
      title: [PRINT CHECK],
      body: [Monochrome printing retains a clear title banner and icon badge.],
      width: 4.8cm, height: 6.8cm,
    )
  ]
]
