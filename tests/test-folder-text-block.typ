// Focused test: PPTX-proportioned single folder card, mirrored RTL and monochrome print.
#import "../lib.typ": *

#set page(width: 11cm, height: auto, margin: 0.4cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#folder-text-block(
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc. Suspendisse viverra sodales mauris, cras pharetra proin egestas arcu erat dolor, at amet.],
  icon: image("../examples/assets/folder-text-block-burger-brown.svg", width: 1.60cm),
  print-icon: image("../examples/assets/folder-text-block-burger-black.svg", width: 1.60cm),
  number: [1],
  width: 7cm,
  height: 4.55cm,
  direction: ltr,
  colour: rgb("#F6A51A"),
)
#v(0.5cm)
#folder-text-block(
  title: [عنوان المرحلة],
  body: [توضح هذه البطاقة فكرة واحدة ضمن تسلسل واضح، مع عنوان قصير ونص موجز وأيقونة مرتبطة بالمحتوى.],
  icon: image("../examples/assets/folder-text-block-burger-teal.svg", width: 1.60cm),
  print-icon: image("../examples/assets/folder-text-block-burger-black.svg", width: 1.60cm),
  number: [2],
  width: 7cm,
  height: 4.55cm,
  direction: rtl,
  dark: true,
  colour: rgb("#35BFD0"),
)
#print-group[
  #folder-text-block(
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc. Suspendisse viverra sodales mauris, cras pharetra proin egestas arcu erat dolor, at amet.],
    icon: image("../examples/assets/folder-text-block-burger-brown.svg", width: 1.60cm),
    print-icon: image("../examples/assets/folder-text-block-burger-black.svg", width: 1.60cm),
    number: [1],
    width: 7cm,
    height: 4.55cm,
    direction: ltr,
  )
]
#print-group[
  #folder-text-block(
    title: [عنوان المرحلة],
    body: [توضح هذه البطاقة فكرة واحدة ضمن تسلسل واضح، مع عنوان قصير ونص موجز وأيقونة مرتبطة بالمحتوى.],
    icon: image("../examples/assets/folder-text-block-burger-teal.svg", width: 1.60cm),
    print-icon: image("../examples/assets/folder-text-block-burger-black.svg", width: 1.60cm),
    number: [2],
    width: 7cm,
    height: 4.55cm,
    direction: rtl,
  )
]
