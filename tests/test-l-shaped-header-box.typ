// Focused regression test: one-box composition, mirrored RTL, dark theme, and print.
#import "../lib.typ": *

#set page(width: 12cm, height: auto, margin: 0.5cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#l-shaped-header-box(
  header: [KEY INSIGHT],
  title: [Make information easier to act on],
  body: [Bring the important message forward and explain why it matters.],
  icon: image("../examples/assets/l-shaped-award.svg", width: 0.72cm),
  width: 7.8cm,
  height: 3.8cm,
  direction: ltr,
)
#v(0.4cm)
#l-shaped-header-box(
  header: [رؤية مهمّة],
  title: [اجعل المعلومات أسهل في التطبيق],
  body: [أبرز الرسالة الأهم، ثم أضف سياقاً يوضّح الفائدة.],
  icon: image("../examples/assets/l-shaped-award.svg", width: 0.72cm),
  width: 7.8cm,
  height: 3.8cm,
  direction: rtl,
  dark: true,
  colour: rgb("#48C6B5"),
)
#print-group[
  #l-shaped-header-box(
    header: [KEY INSIGHT],
    title: [Make information easier to act on],
    body: [Bring the important message forward and explain why it matters.],
    icon: image("../examples/assets/l-shaped-award.svg", width: 0.72cm),
    width: 7.8cm,
    height: 3.8cm,
    direction: ltr,
  )
]
#print-group[
  #l-shaped-header-box(
    header: [رؤية مهمّة],
    title: [اجعل المعلومات أسهل في التطبيق],
    body: [أبرز الرسالة الأهم، ثم أضف سياقاً يوضّح الفائدة.],
    icon: image("../examples/assets/l-shaped-award.svg", width: 0.72cm),
    width: 7.8cm,
    height: 3.8cm,
    direction: rtl,
  )
]
