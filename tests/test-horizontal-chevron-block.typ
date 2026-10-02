// Focused tests for single horizontal chevron blocks and mirrored print styling.
#import "../lib.typ": *

#set page(width: 12cm, height: 4.5cm, margin: 0.4cm, fill: rgb("#F1F1F1"))
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #horizontal-chevron-block(
    body: [A short paragraph checks the colored icon cap, layered chevron, and editable copy.],
    width: 11.2cm, height: 1.8cm,
    accent-colour: rgb("#F05C4B"), icon-style: 0,
  )
]
#pagebreak()
#align(center + horizon)[
  #horizontal-chevron-block(
    body: [The right-side cap is a mirror of the left-side version.],
    width: 11.2cm, height: 1.8cm, chevron-side: "end",
    accent-colour: rgb("#F5A51A"), icon-style: 1,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #horizontal-chevron-block(
    body: [نص عربي قصير لاختبار الكتابة من اليمين إلى اليسار مع شكل السهم.],
    width: 11.2cm, height: 1.8cm, direction: rtl,
    accent-colour: rgb("#6FA574"), icon-style: 2,
  )
]
#pagebreak()
#print-group[
  #align(center + horizon)[
    #horizontal-chevron-block(
      body: [Print mode preserves the chevron outline in monochrome.],
      width: 11.2cm, height: 1.8cm, chevron-side: "end",
      accent-colour: rgb("#37BFD2"), icon-style: 3,
    )
  ]
]
