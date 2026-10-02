// Focused test: capsule cards, RTL flow, variable grid width and print mode.
#import "../lib.typ": *

#set page(width: 22cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let sample = (
  (title: [Idea], body: [Collect observations and define the question.]),
  (title: [Plan], body: [Choose a method and organize the work.]),
  (title: [Build], body: [Carry out the planned work.]),
)

#capsule-text-boxes(steps: sample, width: 18cm, columns: 3, direction: ltr)
#v(0.5cm)
#capsule-text-boxes(steps: sample, width: 14cm, columns: 2, direction: rtl)
#v(0.5cm)
#print-group[
  #capsule-text-boxes(steps: sample, width: 18cm, columns: 3, direction: ltr)
]
