// Focused smoke test for cornered cards, RTL and print.
#import "../lib.typ": *

#set page(width: 24cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let sample = (
  (title: [Discover], body: [Collect observations and define the question.], number: [01]),
  (title: [Plan], body: [Choose a direction and organize the next steps.], number: [02]),
  (title: [Create], body: [Try a solution and learn from the result.], number: [03]),
  (title: [Review], body: [Record outcomes and decide what comes next.], number: [04]),
)

#cornered-cards(steps: sample, width: 22cm, columns: 4, direction: ltr)
#v(0.5cm)
#cornered-cards(steps: sample, width: 16cm, columns: 2, direction: rtl)
#v(0.5cm)
#print-group[
  #cornered-cards(steps: sample, width: 22cm, columns: 4, direction: ltr)
]
