// Focused smoke test for diagonal sleeve cards, RTL and print.
#import "../lib.typ": *

#set page(width: 24cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let sample = (
  (title: [Idea], body: [Collect observations and define the question.]),
  (title: [Team], body: [Choose roles and organize the work.]),
  (title: [Build], body: [Try a solution and learn from the result.]),
  (title: [Review], body: [Record outcomes and next steps.]),
)

#cards-with-corner-sleeve(steps: sample, width: 22cm, columns: 4, direction: ltr)
#v(0.5cm)
#cards-with-corner-sleeve(steps: sample, width: 16cm, columns: 2, direction: rtl)
#v(0.5cm)
#print-group[
  #cards-with-corner-sleeve(steps: sample, width: 22cm, columns: 4, direction: ltr)
]
