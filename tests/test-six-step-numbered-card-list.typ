// Focused test: six numbered cards in LTR, RTL/dark mode, and print mode.
#import "../lib.typ": *

#set page(width: 24cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let steps = (
  (title: [Define], body: [Set an outcome and success measure.]),
  (title: [Gather], body: [Collect the information and resources.]),
  (title: [Explore], body: [Compare routes and choose an approach.]),
  (title: [Plan], body: [Assign clear actions and owners.]),
  (title: [Act], body: [Move forward and keep the team aligned.]),
  (title: [Review], body: [Measure outcomes and record the lesson.]),
)

#six-step-numbered-card-list(steps: steps, width: 20cm, direction: ltr)
#v(0.45cm)
#six-step-numbered-card-list(steps: steps, width: 20cm, direction: rtl, dark: true)
#print-group[
  #six-step-numbered-card-list(steps: steps, width: 20cm, direction: rtl, monochrome: true)
]
