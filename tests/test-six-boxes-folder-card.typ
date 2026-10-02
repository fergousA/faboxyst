// Focused regression: top semicircle, layered outlines, Arabic RTL, and print.
#import "../lib.typ": *

#set page(width: 13.2cm, height: 8.8cm, margin: 0.35cm, fill: white)
#set text(font: "DejaVu Serif", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #six-boxes-folder-card(
    title: [Process],
    body: [A clear sequence helps the team accomplish its goal.],
    icon-style: 1, width: 4.8cm, colour: rgb("#9E2737"), stroke-colour: rgb("#49222A"), stroke-width: 1.8pt,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #six-boxes-folder-card(
    title: [النموّ],
    body: [تساعد الخطة الواضحة الفريق على تنسيق الجهود وتحقيق النتائج المطلوبة.],
    icon-style: 3, width: 4.8cm, direction: rtl, colour: rgb("#43834A"),
  )
]
#set text(lang: "en", dir: ltr)
#pagebreak()
#print-group[
  #six-boxes-folder-card(
    title: [Process],
    body: [A clear sequence helps the team accomplish its goal.],
    icon-style: 1, width: 4.8cm, colour: rgb("#9E2737"), stroke-colour: rgb("#49222A"), stroke-width: 1.8pt,
  )
]
