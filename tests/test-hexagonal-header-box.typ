// Focused regression: notched block, hexagonal icon head, number, RTL, and print.
#import "../lib.typ": *

#set page(width: 9.5cm, height: auto, margin: 0.2cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#hexagonal-header-box(
  number: [01],
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc. Suspendisse viverra sodales mauris, cras pharetra proin egestas arcu erat dolor.],
  icon: image("../examples/assets/hexagonal-eye-white.svg", width: 1.35cm),
  print-icon: image("../examples/assets/hexagonal-eye-print.svg", width: 1.35cm),
  width: 5.2cm,
  height: 7.6cm,
  direction: ltr,
  colour: rgb("#F15F47"),
  text-colour: white,
  title-colour: white,
)
#v(0.3cm)
#hexagonal-header-box(
  number: [02],
  title: [المراجعة],
  body: [تساعد هذه المرحلة على مراجعة التفاصيل والتأكد من مطابقة النتائج للمعايير المطلوبة. افحص المخرجات بعناية، وسجّل الملاحظات المهمة قبل اعتماد الخطوة التالية.],
  icon: image("../examples/assets/hexagonal-shield-white.svg", width: 1.30cm),
  print-icon: image("../examples/assets/hexagonal-shield-print.svg", width: 1.30cm),
  width: 5.2cm,
  height: 7.6cm,
  direction: rtl,
  colour: rgb("#6EA56C"),
  text-colour: white,
  title-colour: white,
)
#print-group[
  #hexagonal-header-box(
    number: [01],
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc.],
    icon: image("../examples/assets/hexagonal-eye-white.svg", width: 1.35cm),
    print-icon: image("../examples/assets/hexagonal-eye-print.svg", width: 1.35cm),
    width: 5.2cm,
    height: 7.6cm,
    direction: ltr,
  )
]
