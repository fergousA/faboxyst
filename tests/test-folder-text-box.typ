// Focused regression: folder shoulder contour, S-shaped icon inset, mirrored RTL and print.
#import "../lib.typ": *

#set page(width: 11cm, height: auto, margin: 0.4cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#folder-text-box(
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc. Suspendisse viverra sodales mauris, cras pharetra proin egestas arcu erat dolor, at amet.],
  icon: image("../examples/assets/folder-text-box-bulb-brown.svg", width: 1.30cm),
  print-icon: image("../examples/assets/folder-text-box-bulb-black.svg", width: 1.30cm),
  number: [01],
  width: 7cm,
  height: 5.42cm,
  direction: ltr,
  colour: rgb("#F7931E"),
)
#v(0.4cm)
#folder-text-box(
  title: [لوريم إيبسوم],
  body: [نص موجز يشرح الفكرة بوضوح، مع مساحة لأهم التفاصيل وأيقونة تساعد على تمييز هذا المربع.],
  icon: image("../examples/assets/folder-text-box-target-teal.svg", width: 1.30cm),
  print-icon: image("../examples/assets/folder-text-box-target-black.svg", width: 1.30cm),
  number: [02],
  width: 7cm,
  height: 5.42cm,
  direction: rtl,
  dark: true,
  colour: rgb("#4BBCE5"),
)
#print-group[
  #folder-text-box(
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc. Suspendisse viverra sodales mauris, cras pharetra proin egestas arcu erat dolor, at amet.],
    icon: image("../examples/assets/folder-text-box-bulb-brown.svg", width: 1.30cm),
    print-icon: image("../examples/assets/folder-text-box-bulb-black.svg", width: 1.30cm),
    number: [01],
    width: 7cm,
    height: 5.42cm,
    direction: ltr,
  )
]
#print-group[
  #folder-text-box(
    title: [لوريم إيبسوم],
    body: [نص موجز يشرح الفكرة بوضوح، مع مساحة لأهم التفاصيل وأيقونة تساعد على تمييز هذا المربع.],
    icon: image("../examples/assets/folder-text-box-target-teal.svg", width: 1.30cm),
    print-icon: image("../examples/assets/folder-text-box-target-black.svg", width: 1.30cm),
    number: [02],
    width: 7cm,
    height: 5.42cm,
    direction: rtl,
  )
]
