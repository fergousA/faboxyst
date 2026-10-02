// Focused regression test: one framed block, mirrored RTL, and print mode.
#import "../lib.typ": *

#set page(width: 10cm, height: auto, margin: 0.45cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#frame-accent-block(
  title: [Focused Insight],
  body: [Give one useful observation room to stand out, then add concise details that support it.],
  icon: image("../examples/assets/frame-accent-bulb.svg", width: 1.05cm),
  width: 4.1cm,
  square-size: 2.5cm,
  offset: 0.34cm,
  body-height: 1.55cm,
  direction: ltr,
)
#v(0.4cm)
#frame-accent-block(
  title: [فكرة مركّزة],
  body: [اترك للفكرة المهمة مساحة واضحة، ثم أضف إليها تفاصيل موجزة تدعمها.],
  icon: image("../examples/assets/frame-accent-bulb.svg", width: 1.05cm),
  width: 4.1cm,
  square-size: 2.5cm,
  offset: 0.34cm,
  body-height: 1.55cm,
  direction: rtl,
  dark: true,
  colour: rgb("#35BFD0"),
)
#print-group[
  #frame-accent-block(
    title: [Focused Insight],
    body: [Give one useful observation room to stand out, then add concise details that support it.],
    icon: image("../examples/assets/frame-accent-bulb.svg", width: 1.05cm),
    width: 4.1cm,
    square-size: 2.5cm,
    offset: 0.34cm,
    body-height: 1.55cm,
    direction: ltr,
  )
]
#print-group[
  #frame-accent-block(
    title: [فكرة مركّزة],
    body: [اترك للفكرة المهمة مساحة واضحة، ثم أضف إليها تفاصيل موجزة تدعمها.],
    icon: image("../examples/assets/frame-accent-bulb.svg", width: 1.05cm),
    width: 4.1cm,
    square-size: 2.5cm,
    offset: 0.34cm,
    body-height: 1.55cm,
    direction: rtl,
  )
]
