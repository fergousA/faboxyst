// Focused smoke test for banners with circles: width, LTR, RTL and print.
#import "../lib.typ": *

#set page(width: 22cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let sample = (
  (title: [Discover], body: [Collect observations and define the question.]),
  (title: [Plan], body: [Choose a method and organize the work.]),
  (title: [Build], body: [Carry out the planned work.]),
  (title: [Review], body: [Check the outcome and record lessons.]),
)

#banners-with-circles(steps: sample, width: 18cm, columns: 2, direction: ltr)
#v(0.5cm)
#banners-with-circles(steps: sample, width: 15cm, columns: 2, direction: rtl)
#v(0.5cm)
#print-group[
  #banners-with-circles(steps: sample, width: 18cm, columns: 2, direction: ltr)
]
