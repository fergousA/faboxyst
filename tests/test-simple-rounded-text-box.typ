// Focused regression: single rounded card, two reading directions, and print.
#import "../lib.typ": *

#set page(width: 10.5cm, height: auto, margin: 0.35cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#simple-rounded-text-box(
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc. Suspendisse viverra sodales mauris, cras pharetra proin egestas arcu erat dolor, at amet.],
  icon: image("../examples/assets/simple-rounded-bike-white.png", width: 0.92cm),
  print-icon: image("../examples/assets/simple-rounded-bike-black.png", width: 0.92cm),
  width: 7.8cm,
  height: 5.2cm,
  direction: ltr,
  header-colour: rgb("#3D5F87"),
)
#v(0.3cm)
#simple-rounded-text-box(
  title: [فكرة واضحة],
  body: [نص موجز يشرح الفكرة ويدعمها بتفاصيل عملية، في مساحة مرتبة يسهل قراءتها وتخصيصها.],
  icon: image("../examples/assets/simple-rounded-bike-black.png", width: 0.92cm),
  print-icon: image("../examples/assets/simple-rounded-bike-black.png", width: 0.92cm),
  width: 7.8cm,
  height: 5.2cm,
  direction: rtl,
  header-colour: rgb("#F2BB45"),
  panel-colour: rgb("#082C40"),
  title-colour: rgb("#141414"),
  text-colour: rgb("#E7EEF2"),
)
#print-group[
  #simple-rounded-text-box(
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, nibh est.],
    icon: image("../examples/assets/simple-rounded-bike-white.png", width: 0.92cm),
    print-icon: image("../examples/assets/simple-rounded-bike-black.png", width: 0.92cm),
    width: 7.8cm,
    height: 5.2cm,
    direction: ltr,
  )
]
