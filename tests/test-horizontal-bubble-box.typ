// Focused regression: abstract bubble, open rounded frame, RTL mirroring, and print.
#import "../lib.typ": *

#set page(width: 9cm, height: auto, margin: 0.25cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#horizontal-bubble-box(
  bubble-title: [Lorem Ipsum],
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc. Suspendisse viverra sodales mauris, cras pharetra proin egestas arcu erat dolor, at amet.],
  icon: image("../examples/assets/horizontal-bubble-puzzle-white.svg", width: 1.08cm),
  print-icon: image("../examples/assets/horizontal-bubble-puzzle-print.svg", width: 1.08cm),
  width: 4.4cm,
  height: 8.9cm,
  direction: ltr,
  colour: rgb("#4CC1EF"),
)
#v(0.3cm)
#horizontal-bubble-box(
  bubble-title: [فكرة واضحة],
  title: [المعلومة],
  body: [يساعد هذا الإطار على تنظيم التفاصيل المهمة وعرضها بوضوح. ابدأ بالفكرة الأساسية، ثم أضف شرحاً موجزاً يدعم الرسالة ويقربها إلى القارئ. يمكن تخصيص النص والأيقونة واللون بما يتناسب مع موضوع العرض والجمهور المستهدف.],
  icon: image("../examples/assets/horizontal-bubble-key-white.svg", width: 1.08cm),
  print-icon: image("../examples/assets/horizontal-bubble-key-print.svg", width: 1.08cm),
  width: 4.4cm,
  height: 8.9cm,
  direction: rtl,
  colour: rgb("#3AC6E1"),
)
#print-group[
  #horizontal-bubble-box(
    bubble-title: [Lorem Ipsum],
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc.],
    icon: image("../examples/assets/horizontal-bubble-puzzle-white.svg", width: 1.08cm),
    print-icon: image("../examples/assets/horizontal-bubble-puzzle-print.svg", width: 1.08cm),
    width: 4.4cm,
    height: 8.9cm,
    direction: ltr,
  )
]
