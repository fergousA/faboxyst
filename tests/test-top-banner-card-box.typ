// Focused compile regression for one top-banner card in LTR, RTL, and print.
#import "../lib.typ": *

#set page(width: 10cm, height: 10.5cm, margin: 0.3cm, fill: rgb("#F2F2F2"))
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#top-banner-card-box(
  title: [Clear Priorities],
  label: [TITLE 01],
  body: [Define the goal, share the key details, and agree on one clear next step. Review progress often and adjust the plan when needed.],
  icon: image("../examples/assets/top-banner-tools.svg", width: 0.94cm),
  print-icon: image("../examples/assets/top-banner-tools-black.svg", width: 0.94cm),
  width: 6.2cm,
  height: 8.8cm,
  direction: ltr,
)
#pagebreak()
#set page(fill: rgb("#002033"))
#top-banner-card-box(
  title: [خطة واضحة],
  label: [عنوان ٠٢],
  body: [حددوا الهدف، وشاركوا التفاصيل المهمة، واتفقوا على خطوة تالية واضحة.],
  icon: image("../examples/assets/top-banner-gears.svg", width: 0.94cm),
  print-icon: image("../examples/assets/top-banner-gears-black.svg", width: 0.94cm),
  width: 6.2cm,
  height: 8.8cm,
  direction: rtl,
  colour: rgb("#3AC6E1"),
  shadow-colour: rgb("#385462"),
)
#pagebreak()
#print-group[
  #top-banner-card-box(
    title: [Clear Priorities],
    label: [TITLE 01],
    body: [Define one clear next step.],
    icon: image("../examples/assets/top-banner-tools.svg", width: 0.94cm),
    print-icon: image("../examples/assets/top-banner-tools-black.svg", width: 0.94cm),
    width: 6.2cm,
    height: 8.8cm,
    direction: ltr,
  )
]
