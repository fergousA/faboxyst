// Focused regression coverage for neutral, accent, RTL, and print panels.
#import "../lib.typ": *

#set page(width: 9cm, height: 9cm, margin: 0.5cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #neumorphic-text-panel(
    title: [CUSTOM TITLE],
    body: [A short paragraph checks the inset panel, centered title, and raised icon medallion.],
    width: 4.8cm, height: 6cm, icon-style: 0,
  )
]
#pagebreak()
#align(center + horizon)[
  #neumorphic-text-panel(
    title: [ACTIVE STATE],
    body: [The accent option colors the medallion and title without coloring the paper panel.],
    width: 4.8cm, height: 6cm, icon-style: 1,
    accent: true, accent-colour: rgb("#35B5E5"),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #neumorphic-text-panel(
    title: [اختبار الاتجاه],
    body: [نص عربي قصير لاختبار عرض البطاقة واتجاه الكتابة من اليمين إلى اليسار.],
    width: 4.8cm, height: 6cm, direction: rtl, icon-style: 2,
  )
]
#pagebreak()
#print-group[
  #align(center + horizon)[
    #neumorphic-text-panel(
      title: [PRINT CHECK],
      body: [Monochrome mode keeps the soft relief, readable copy, and clear icon.],
      width: 4.8cm, height: 6cm, accent: true, icon-style: 3,
    )
  ]
]
