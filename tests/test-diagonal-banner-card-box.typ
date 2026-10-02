// Focused regression: one diagonal ribbon card, three bullet items, mirrored RTL.
#import "../lib.typ": *

#set page(width: 9cm, height: auto, margin: 0.3cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#diagonal-banner-card-box(
  title: [Lorem Ipsum],
  items: (
    [Lorem ipsum dolor sit amet, consectetur adipiscing elit.],
    [Nibh est vel auctor, convallis ornare. A magna maecenas.],
    [Suspendisse viverra sodales mauris in.],
  ),
  number: "01",
  icon: image("../examples/assets/diagonal-banner-rocket-black.png", width: 0.78cm),
  print-icon: image("../examples/assets/diagonal-banner-rocket-black.png", width: 0.78cm),
  width: 4.8cm,
  height: 6.8cm,
  direction: ltr,
  colour: rgb("#EF604C"),
)
#v(0.3cm)
#diagonal-banner-card-box(
  title: [فكرة واضحة],
  items: (
    [نقطة أساسية تساعد على فهم الفكرة.],
    [تفصيل موجز يدعم السياق ويوضح الهدف.],
    [خطوة تالية قابلة للتنفيذ والقياس.],
  ),
  number: "٠١",
  icon: image("../examples/assets/diagonal-banner-rocket-black.png", width: 0.78cm),
  print-icon: image("../examples/assets/diagonal-banner-rocket-black.png", width: 0.78cm),
  width: 4.8cm,
  height: 6.8cm,
  direction: rtl,
  colour: rgb("#E6B43A"),
  panel-colour: rgb("#0B2D40"),
  title-colour: rgb("#151515"),
  text-colour: rgb("#EEF3F5"),
  number-colour: white,
)
#print-group[
  #diagonal-banner-card-box(
    title: [Lorem Ipsum],
    items: ([Lorem ipsum dolor sit amet.], [A second point.], [A final point.]),
    number: "01",
    icon: image("../examples/assets/diagonal-banner-rocket-black.png", width: 0.78cm),
    print-icon: image("../examples/assets/diagonal-banner-rocket-black.png", width: 0.78cm),
    width: 4.8cm,
    height: 6.8cm,
    direction: ltr,
  )
]
