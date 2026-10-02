// Focused regression: one nested folder silhouette in LTR, RTL, and print.
#import "../lib.typ": *

#set page(width: 14cm, height: auto, margin: 0.4cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#nested-file-text-box(
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc.],
  number: "01",
  icon: image("../examples/assets/nested-file-lightbulb.png", width: 0.62cm),
  print-icon: image("../examples/assets/nested-file-lightbulb.png", width: 0.62cm),
  width: 7.5cm,
  height: 2.7cm,
  direction: ltr,
  colour: rgb("#4CC1EF"),
)
#v(0.3cm)
#nested-file-text-box(
  title: [معلومة مفيدة],
  body: [تساعد هذه المساحة على ترتيب الفكرة وشرحها بوضوح، مع عنوان مختصر يسهّل تذكّرها.],
  number: "٠١",
  icon: image("../examples/assets/nested-file-lightbulb.png", width: 0.62cm),
  print-icon: image("../examples/assets/nested-file-lightbulb.png", width: 0.62cm),
  width: 7.5cm,
  height: 2.7cm,
  direction: rtl,
  colour: rgb("#E1B53A"),
  panel-colour: rgb("#001F33"),
  text-colour: white,
  label-colour: white,
)
#print-group[
  #nested-file-text-box(
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, nibh est.],
    number: "01",
    icon: image("../examples/assets/nested-file-lightbulb.png", width: 0.62cm),
    print-icon: image("../examples/assets/nested-file-lightbulb.png", width: 0.62cm),
    width: 7.5cm,
    height: 2.7cm,
    direction: ltr,
  )
]
