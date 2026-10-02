// Focused regression: one abstract block, mirrored tab and print mode.
#import "../lib.typ": *

#set page(width: 12cm, height: auto, margin: 0.4cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#modern-block-list-box(
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, consectetur adipiscing elit.],
  number: "01",
  icon: image("../examples/assets/modern-block-list-coins.png", width: 0.85cm),
  print-icon: image("../examples/assets/modern-block-list-coins.png", width: 0.85cm),
  width: 10cm,
  height: 2.9cm,
  direction: ltr,
  colour: rgb("#F9C947"),
)
#v(0.35cm)
#modern-block-list-box(
  title: [خطة واضحة],
  body: [خطوات عملية لتنظيم الأفكار، وتقديم المعلومات بطريقة مختصرة وسهلة المتابعة.],
  number: "٠١",
  icon: image("../examples/assets/modern-block-list-coins.png", width: 0.85cm),
  print-icon: image("../examples/assets/modern-block-list-coins.png", width: 0.85cm),
  width: 10cm,
  height: 2.9cm,
  direction: rtl,
  colour: rgb("#B55227"),
  support-colour: rgb("#CDD1D5"),
  text-colour: white,
)
#print-group[
  #modern-block-list-box(
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, consectetur adipiscing elit.],
    number: "01",
    icon: image("../examples/assets/modern-block-list-coins.png", width: 0.85cm),
    print-icon: image("../examples/assets/modern-block-list-coins.png", width: 0.85cm),
    width: 10cm,
    height: 2.9cm,
    direction: ltr,
  )
]
