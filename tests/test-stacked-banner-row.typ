// Focused regression coverage for the standalone banner row, RTL, and print.
#import "../lib.typ": *

#set page(width: 11.5cm, height: 4.6cm, margin: 0.3cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #stacked-banner-row(
    title: [CUSTOM TITLE],
    body: [A short test sentence verifies the folded icon panel, title, paragraph, and accent stripe.],
    width: 10.8cm, height: 1.55cm,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #stacked-banner-row(
    title: [اختبار الاتجاه],
    body: [نص عربي قصير لاختبار اتجاه الكتابة وانعكاس الشريط والرمز إلى الجهة الأخرى.],
    width: 10.8cm, height: 1.55cm, direction: rtl,
    colour: rgb("#20A68B"), icon-style: 2,
  )
]
#pagebreak()
#print-group[
  #align(center + horizon)[
    #stacked-banner-row(
      title: [PRINT CHECK],
      body: [Monochrome output keeps the folded edge and lower accent legible.],
      width: 10.8cm, height: 1.55cm,
    )
  ]
]
