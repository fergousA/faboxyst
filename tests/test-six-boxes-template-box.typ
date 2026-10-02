// Focused regression: overlapping icon medallion, RTL shaping, and grayscale mode.
#import "../lib.typ": *

#set page(width: 13.2cm, height: 8.8cm, margin: 0.35cm, fill: white)
#set text(font: "DejaVu Serif", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #six-boxes-template-box(
    title: [Aim for clarity],
    body: [A focused goal helps the team choose its next step.],
    icon-style: 2, width: 7.4cm, icon-side: "right",
    text-align: "center", colour: rgb("#1E6685"),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #six-boxes-template-box(
    title: [الهدف الواضح],
    body: [يساعد الهدف الواضح الفريق على اختيار خطوته التالية بثقة.],
    icon-style: 2, width: 7.4cm, icon-side: "start",
    direction: rtl, text-align: "center", colour: rgb("#43834A"),
  )
]
#set text(lang: "en", dir: ltr)
#pagebreak()
#print-group[
  #six-boxes-template-box(
    title: [Aim for clarity],
    body: [A focused goal helps the team choose its next step.],
    icon-style: 2, width: 7.4cm, icon-side: "right",
    text-align: "center", colour: rgb("#1E6685"),
  )
]
