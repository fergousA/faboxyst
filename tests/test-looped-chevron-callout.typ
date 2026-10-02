// Focused coverage: one callout with custom emblem, RTL mirroring, and print.
#import "../lib.typ": *

#set page(width: 12cm, height: 5.5cm, margin: 0.3cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #looped-chevron-callout(
    icon: text(font: "DejaVu Sans", size: 42pt, weight: "bold", fill: rgb("#55418D"), [B]),
    body: [A short regression sentence checks the loop frame, chevrons, emblem, and text area.],
    width: 11.2cm, height: 4.7cm,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #looped-chevron-callout(
    icon: [ب], body: [نص قصير لاختبار اتجاه الكتابة وانعكاس الإطار.],
    width: 11.2cm, height: 4.7cm, direction: rtl,
  )
]
#pagebreak()
#print-group[
  #align(center + horizon)[
    #looped-chevron-callout(
      body: [Monochrome regression sample.],
      width: 11.2cm, height: 4.7cm,
    )
  ]
]
