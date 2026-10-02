// Focused smoke test for connected process cards, RTL and print.
#import "../lib.typ": *

#set page(width: 24cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let sample = (
  (title: [Idea], body: [Collect observations and define the question.]),
  (title: [Plan], body: [Choose a direction and organize the next steps.]),
  (title: [Create], body: [Test a small solution and learn from the result.]),
  (title: [Review], body: [Record outcomes and decide what comes next.]),
)

#connected-cards-process(steps: sample, width: 22cm, columns: 4, direction: ltr)
#v(0.5cm)
#connected-cards-process(steps: sample, width: 16cm, columns: 2, direction: rtl)
#v(0.5cm)
#print-group[
  #connected-cards-process(steps: sample, width: 22cm, columns: 4, direction: ltr)
]
