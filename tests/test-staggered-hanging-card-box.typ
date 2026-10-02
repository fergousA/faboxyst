// Focused regression: one hanging card, bidirectional text and monochrome output.
#import "../lib.typ": *

#set page(width: 9cm, height: auto, margin: 0.3cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#staggered-hanging-card-box(
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc. Suspendisse viverra sodales mauris, cras pharetra proin egestas arcu erat dolor, at amet.],
  clip: image("../examples/assets/staggered-binder-clip.svg", width: 0.56cm),
  print-clip: image("../examples/assets/staggered-binder-clip.svg", width: 0.56cm),
  width: 5.4cm,
  height: 6.3cm,
  direction: ltr,
  card-colour: rgb("#EF604C"),
  title-colour: white,
  text-colour: white,
)
#v(0.3cm)
#staggered-hanging-card-box(
  title: [فكرة واضحة],
  body: [تعرض هذه البطاقة فكرة واحدة بشكل واضح، مع تفاصيل موجزة تساعد على فهمها وتذكرها. يمكن تخصيص العنوان والنص بما يناسب موضوع العرض.],
  clip: image("../examples/assets/staggered-binder-clip.svg", width: 0.56cm),
  print-clip: image("../examples/assets/staggered-binder-clip.svg", width: 0.56cm),
  width: 5.4cm,
  height: 6.3cm,
  direction: rtl,
  card-colour: rgb("#F2B741"),
  title-colour: rgb("#191919"),
  text-colour: rgb("#191919"),
)
#print-group[
  #staggered-hanging-card-box(
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, nibh est.],
    clip: image("../examples/assets/staggered-binder-clip.svg", width: 0.56cm),
    print-clip: image("../examples/assets/staggered-binder-clip.svg", width: 0.56cm),
    width: 5.4cm,
    height: 6.3cm,
    direction: ltr,
  )
]
