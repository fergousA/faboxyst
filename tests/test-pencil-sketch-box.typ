// Focused regression: irregular double stroke, Arabic RTL, and grayscale mode.
#import "../lib.typ": *

#set page(width: 13.2cm, height: 8.8cm, margin: 0.35cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #pencil-sketch-box(
    title: [Make it visible],
    body: [A hand-drawn frame can make an important note feel more personal.],
    width: 7.2cm, stroke-colour: rgb("#674E17"), stroke-width: 2.5pt,
    icon: [✦], icon-position: "start", icon-size: 0.34cm, icon-colour: rgb("#674E17"),
    colour: rgb("#C99D20"),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #pencil-sketch-box(
    title: [ملاحظة واضحة],
    body: [يساعد الإطار المرسوم يدويًا على إبراز الفكرة بأسلوب بسيط وشخصي.],
    width: 7.2cm, direction: rtl, stroke-colour: rgb("#365D39"), stroke-width: 2.2pt,
    icon: [✦], icon-position: "end", icon-size: 0.34cm, icon-colour: rgb("#365D39"),
    colour: rgb("#43834A"),
  )
]
#set text(lang: "en", dir: ltr)
#pagebreak()
#print-group[
  #pencil-sketch-box(
    title: [Make it visible],
    body: [A hand-drawn frame can make an important note feel more personal.],
    width: 7.2cm, stroke-colour: rgb("#674E17"), stroke-width: 2.5pt,
    icon: [✦], icon-position: "start", icon-size: 0.34cm, icon-colour: rgb("#674E17"),
    colour: rgb("#C99D20"),
  )
]
