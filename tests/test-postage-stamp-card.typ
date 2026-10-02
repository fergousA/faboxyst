// Focused regression coverage for dimensions, icon/stroke controls, RTL, and print.
#import "../lib.typ": *

#set page(width: 9cm, height: 10cm, margin: 0.5cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #postage-stamp-card(
    title: [Custom stamp],
    body: [One note per component, with a readable inset and even perforations.],
    width: 4.5cm,
    height: 5.2cm,
    icon-style: 2,
    icon-size: 0.55cm,
    icon-gap: 0.18cm,
    colour: rgb("#3B8B73"),
    stroke-colour: rgb("#285C4D"),
    stroke-width: 0.8pt,
    header-height: 0.94cm,
    frame-width: 0.22cm,
    perforation-radius: 0.09cm,
    perforation-spacing: 0.31cm,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #postage-stamp-card(
    title: [فكرة مفيدة],
    body: [سجّل الفكرة، وراجع أثرها، ثم احتفظ بخلاصة واضحة للخطوة التالية.],
    width: 4.5cm,
    height: 5.2cm,
    icon-style: 1,
    direction: rtl,
    text-align: "right",
    colour: rgb("#F3A51B"),
  )
]
#pagebreak()
#print-group[
  #align(center + horizon)[
    #postage-stamp-card(
      title: [خطة واضحة],
      body: [حدّد الأولوية، ثم قارن النتائج، ودوّن خلاصة قصيرة قابلة للتنفيذ.],
      width: 4.5cm,
      height: 5.2cm,
      show-icon: false,
      direction: rtl,
      colour: rgb("#32BCD0"),
    )
  ]
]
