// Focused smoke test for alternating raised/inset duo cards and RTL/print.
#import "../lib.typ": *

#set page(width: 24cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let sample = (
  (title: [Discover], body: [Notice the detail and frame the question.]),
  (title: [Imagine], body: [Explore several possibilities before choosing.]),
  (title: [Measure], body: [Compare results and decide what to improve.], raised: true, icon-fill: rgb("#4DBDE8")),
  (title: [Observe], body: [Review the evidence and share what changed.]),
)

#double-duo-neumorphic(steps: sample, width: 19.6cm, columns: 2, direction: ltr)
#v(0.5cm)
#double-duo-neumorphic(steps: sample, width: 17cm, columns: 2, direction: rtl)
#v(0.5cm)
#print-group[
  #double-duo-neumorphic(steps: sample, width: 19.6cm, columns: 2, direction: ltr)
]
