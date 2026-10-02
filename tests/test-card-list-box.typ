// Focused regression: one layered card, RTL mirrored deck, and print mode.
#import "../lib.typ": *

#set page(width: 10.5cm, height: auto, margin: 0.35cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#card-list-box(
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc. Suspendisse viverra sodales mauris, cras pharetra proin egestas arcu erat dolor, at amet.],
  icon: image("../examples/assets/card-list-briefcase-yellow.png", width: 1.65cm),
  print-icon: image("../examples/assets/card-list-briefcase-black.png", width: 1.65cm),
  width: 4.8cm,
  height: 6.8cm,
  direction: ltr,
  backplate-colour: rgb("#FFC943"),
  tilt: 12deg,
)
#v(0.3cm)
#card-list-box(
  title: [فكرة مميزة],
  body: [تعرض هذه البطاقة الفكرة بوضوح، وتترك مساحة لشرحها بإيجاز مع رمز بصري يرسخ معناها.],
  icon: image("../examples/assets/card-list-briefcase-cyan.png", width: 1.65cm),
  print-icon: image("../examples/assets/card-list-briefcase-black.png", width: 1.65cm),
  width: 4.8cm,
  height: 6.8cm,
  direction: rtl,
  backplate-colour: rgb("#38BEDC"),
  panel-colour: white,
  title-colour: rgb("#161616"),
  text-colour: rgb("#565A5E"),
  tilt: 12deg,
)
#print-group[
  #card-list-box(
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, nibh est.],
    icon: image("../examples/assets/card-list-briefcase-yellow.png", width: 1.65cm),
    print-icon: image("../examples/assets/card-list-briefcase-black.png", width: 1.65cm),
    width: 4.8cm,
    height: 6.8cm,
    direction: ltr,
    tilt: 12deg,
  )
]
