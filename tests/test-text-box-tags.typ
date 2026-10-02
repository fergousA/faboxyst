// Focused regression test: one notched tag, mirrored RTL, square variant, and print.
#import "../lib.typ": *

#set page(width: 12cm, height: auto, margin: 0.5cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#text-box-tag(
  title: [KEY IDEA],
  body: [Keep the message focused and make the next action easy to find.],
  icon: image("../examples/assets/text-box-tag-star.svg", width: 0.92cm),
  width: 8.4cm,
  height: 3.35cm,
  direction: ltr,
)
#v(0.4cm)
#text-box-tag(
  title: [فكرة أساسية],
  body: [اجعل الرسالة واضحة، وأضف سياقاً موجزاً، ثم أبرز الخطوة التالية.],
  icon: image("../examples/assets/text-box-tag-star.svg", width: 0.92cm),
  width: 8.4cm,
  height: 3.35cm,
  direction: rtl,
  dark: true,
  rounded: false,
  colour: rgb("#174D62"),
  icon-colour: rgb("#83CBBE"),
)
#print-group[
  #text-box-tag(
    title: [KEY IDEA],
    body: [Keep the message focused and make the next action easy to find.],
    icon: image("../examples/assets/text-box-tag-star.svg", width: 0.92cm),
    width: 8.4cm,
    height: 3.35cm,
    direction: ltr,
  )
]
#print-group[
  #text-box-tag(
    title: [فكرة أساسية],
    body: [اجعل الرسالة واضحة، وأضف سياقاً موجزاً، ثم أبرز الخطوة التالية.],
    icon: image("../examples/assets/text-box-tag-star.svg", width: 0.92cm),
    width: 8.4cm,
    height: 3.35cm,
    direction: rtl,
  )
]
