// Focused regression test: one sheared panel, mirrored RTL, and print mode.
#import "../lib.typ": *

#set page(width: 12cm, height: auto, margin: 0.45cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#perspective-text-box(
  title: [Importance in Context],
  body: [Show one important fact clearly. The angled face and shaded edge give the content depth without crowding the message.],
  icon: image("../examples/assets/perspective-target-black.svg", width: 0.76cm),
  print-icon: image("../examples/assets/perspective-target-black.svg", width: 0.76cm),
  width: 6.8cm,
  height: 3.85cm,
  direction: ltr,
)
#v(0.4cm)
#perspective-text-box(
  title: [أهمية الفكرة],
  body: [اعرض حقيقة مهمة بوضوح. يمنح السطح المائل والحافة المظللة المحتوى عمقاً بسيطاً دون تشتيت الرسالة.],
  icon: image("../examples/assets/perspective-target-white.svg", width: 0.76cm),
  print-icon: image("../examples/assets/perspective-target-black.svg", width: 0.76cm),
  width: 6.8cm,
  height: 3.85cm,
  direction: rtl,
  dark: true,
  colour: rgb("#2A648D"),
)
#print-group[
  #perspective-text-box(
    title: [Importance in Context],
    body: [Show one important fact clearly. The angled face and shaded edge give the content depth without crowding the message.],
    icon: image("../examples/assets/perspective-target-black.svg", width: 0.76cm),
    print-icon: image("../examples/assets/perspective-target-black.svg", width: 0.76cm),
    width: 6.8cm,
    height: 3.85cm,
    direction: ltr,
  )
]
#print-group[
  #perspective-text-box(
    title: [أهمية الفكرة],
    body: [اعرض حقيقة مهمة بوضوح. يمنح السطح المائل والحافة المظللة المحتوى عمقاً بسيطاً دون تشتيت الرسالة.],
    icon: image("../examples/assets/perspective-target-black.svg", width: 0.76cm),
    print-icon: image("../examples/assets/perspective-target-black.svg", width: 0.76cm),
    width: 6.8cm,
    height: 3.85cm,
    direction: rtl,
  )
]
