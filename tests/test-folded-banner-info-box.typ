// Focused regression: variable text height, RTL mirroring, color and grayscale print.
#import "../lib.typ": *

#set page(width: 13.2cm, height: 8.8cm, margin: 0.35cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #folded-banner-info-box(
    title: [Focus], number: [01], icon-style: 0,
    body: [Choose one priority, make the next action clear, and share a concise update with the team.],
    colour: rgb("#F35D49"), title-colour: white, width: 11.6cm,
  )
]
#pagebreak()
#set page(fill: rgb("#172833"))
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #folded-banner-info-box(
    title: [مراجعة الأداء], number: [٠٢], icon-style: 1,
    body: [قارن النتائج بالأهداف، وسجّل ما نجح، ثم حدّد الخطوة التالية بوضوح للفريق.],
    colour: rgb("#35BBD5"), width: 11.6cm, direction: rtl,
  )
]
#set text(lang: "en", dir: ltr)
#pagebreak()
#set page(fill: white)
#print-group[
  #folded-banner-info-box(
    title: [Focus], number: [01], icon-style: 0,
    body: [Choose one priority, make the next action clear, and share a concise update with the team.],
    colour: rgb("#F35D49"), title-colour: white, width: 11.6cm,
  )
]
#pagebreak()
#print-group[
  #set text(lang: "ar", dir: rtl)
  #folded-banner-info-box(
    title: [مراجعة الأداء], number: [٠٢], icon-style: 1,
    body: [قارن النتائج بالأهداف، وسجّل ما نجح، ثم حدّد الخطوة التالية بوضوح للفريق.],
    colour: rgb("#35BBD5"), width: 11.6cm, direction: rtl,
  )
]
