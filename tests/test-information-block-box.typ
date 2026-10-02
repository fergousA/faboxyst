// Focused regression: single split-color card, centered badge, RTL and print.
#import "../lib.typ": *

#set page(width: 11cm, height: auto, margin: 0.35cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#information-block-box(
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc.],
  number: "01",
  icon: image("../examples/assets/information-blocks-gears.png", width: 0.88cm),
  print-icon: image("../examples/assets/information-blocks-gears.png", width: 0.88cm),
  width: 8.2cm,
  height: 5.25cm,
  direction: ltr,
  colour: rgb("#F15F4B"),
  body-colour: rgb("#00243A"),
)
#v(0.3cm)
#information-block-box(
  title: [فكرة واضحة],
  body: [يساعد هذا الإطار على تنظيم المعلومات وتقديمها بوضوح، مع شرح موجز يدعم الفكرة الأساسية.],
  number: "٠١",
  icon: image("../examples/assets/information-blocks-gears.png", width: 0.88cm),
  print-icon: image("../examples/assets/information-blocks-gears.png", width: 0.88cm),
  width: 8.2cm,
  height: 5.25cm,
  direction: rtl,
  colour: rgb("#38C1D4"),
  body-colour: rgb("#00334A"),
)
#print-group[
  #information-block-box(
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, nibh est.],
    number: "01",
    icon: image("../examples/assets/information-blocks-gears.png", width: 0.88cm),
    print-icon: image("../examples/assets/information-blocks-gears.png", width: 0.88cm),
    width: 8.2cm,
    height: 5.25cm,
    direction: ltr,
  )
]
