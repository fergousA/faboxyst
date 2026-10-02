// Focused regression coverage for numbering, mirroring, RTL, and print.
#import "../lib.typ": *

#set page(width: 12cm, height: 5cm, margin: 0.45cm, fill: rgb("#F0EEF0"))
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #vertical-chevron-list-item(
    number: [01], title: [CUSTOM TITLE],
    body: [A short sentence verifies the badge, title, paragraph, and rounded shadowed panel.],
    width: 11cm, height: 1.55cm,
  )
]
#pagebreak()
#align(center + horizon)[
  #vertical-chevron-list-item(
    number: [02], title: [REVERSED],
    body: [The badge can also be placed at the trailing edge.],
    width: 11cm, height: 1.55cm, badge-side: "end",
    colour: rgb("#F58F17"),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #vertical-chevron-list-item(
    number: [03], title: [اختبار الاتجاه],
    body: [نص عربي قصير لاختبار اتجاه الكتابة وانعكاس الشارة الرقمية.],
    width: 11cm, height: 1.55cm, direction: rtl,
  )
]
#pagebreak()
#print-group[
  #align(center + horizon)[
    #vertical-chevron-list-item(
      number: [04], title: [PRINT CHECK],
      body: [Monochrome output keeps the number and panel clearly separated.],
      width: 11cm, height: 1.55cm,
    )
  ]
]
