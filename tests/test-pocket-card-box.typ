// Focused regression test: single pocket lip, body panel, RTL copy, and print.
#import "../lib.typ": *

#set page(width: 10cm, height: auto, margin: 0.45cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#pocket-card-box(
  title: [Growth Note],
  body: [A pocket keeps the key idea easy to retrieve. Use the copy below for a short description or practical reminder.],
  icon: image("../examples/assets/pocket-card-bars-white.svg", width: 0.46cm),
  print-icon: image("../examples/assets/pocket-card-bars-black.svg", width: 0.46cm),
  width: 4.7cm,
  card-height: 3.5cm,
  direction: ltr,
)
#v(0.4cm)
#pocket-card-box(
  title: [ملحوظة للنمو],
  body: [يساعد شكل الجيب على إبقاء الفكرة الأساسية قريبة وسهلة الاسترجاع. أضف وصفاً موجزاً أو تذكيراً عملياً.],
  icon: image("../examples/assets/pocket-card-bars-white.svg", width: 0.46cm),
  print-icon: image("../examples/assets/pocket-card-bars-black.svg", width: 0.46cm),
  width: 4.7cm,
  card-height: 3.5cm,
  direction: rtl,
  dark: true,
  colour: rgb("#2DB8CA"),
)
#print-group[
  #pocket-card-box(
    title: [Growth Note],
    body: [A pocket keeps the key idea easy to retrieve. Use the copy below for a short description or practical reminder.],
    icon: image("../examples/assets/pocket-card-bars-white.svg", width: 0.46cm),
    print-icon: image("../examples/assets/pocket-card-bars-black.svg", width: 0.46cm),
    width: 4.7cm,
    card-height: 3.5cm,
    direction: ltr,
  )
]
#print-group[
  #pocket-card-box(
    title: [ملحوظة للنمو],
    body: [يساعد شكل الجيب على إبقاء الفكرة الأساسية قريبة وسهلة الاسترجاع. أضف وصفاً موجزاً أو تذكيراً عملياً.],
    icon: image("../examples/assets/pocket-card-bars-white.svg", width: 0.46cm),
    print-icon: image("../examples/assets/pocket-card-bars-black.svg", width: 0.46cm),
    width: 4.7cm,
    card-height: 3.5cm,
    direction: rtl,
  )
]
