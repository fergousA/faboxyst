// Focused smoke test for cube blocks, RTL and print.
#import "../lib.typ": *

#set page(width: 24cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let sample = (
  (title: [Plan], body: [Gather information and decide on a direction.]),
  (title: [Build], body: [Try the idea and learn from the results.]),
  (title: [Review], body: [Record outcomes and choose the next step.]),
  (title: [Share], body: [Present the results clearly to the group.]),
)

#cube-block-list(steps: sample, width: 22cm, columns: 3, direction: ltr)
#v(0.5cm)
#cube-block-list(steps: sample, width: 16cm, columns: 2, direction: rtl)
#v(0.5cm)
#print-group[
  #cube-block-list(steps: sample, width: 22cm, columns: 3, direction: ltr)
]
