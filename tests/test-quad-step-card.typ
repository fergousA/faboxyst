// Focused regression coverage for one portrait step card, RTL, and print.
#import "../lib.typ": *

#set page(width: 5.6cm, height: 7.7cm, margin: 0.3cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #quad-step-card(
    number: [CUSTOM], title: [CUSTOM TITLE],
    body: [This focused check verifies the round icon medallion, accent halo, title, body, and lower number badge.],
    width: 4.6cm, height: 4.6cm,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #quad-step-card(
    number: [٠٣], title: [اختبار الخطوة],
    body: [نص عربي قصير لاختبار اتجاه الكتابة داخل بطاقة الخطوة.],
    width: 4.6cm, height: 4.6cm, direction: rtl,
    colour: rgb("#38BDD1"), icon-style: 2,
  )
]
#pagebreak()
#print-group[
  #align(center + horizon)[
    #quad-step-card(
      number: [04], title: [PRINT CHECK],
      body: [Monochrome printing preserves a distinct lower number medallion.],
      width: 4.6cm, height: 4.6cm,
    )
  ]
]
