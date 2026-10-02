// Focused test: 2x2 card grid in LTR, mirrored RTL, and print mode.
#import "../lib.typ": *

#set page(width: 24cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let steps = (
  (title: [Metrics], body: [Measure progress and share the evidence.], icon: [▥]),
  (title: [Checklist], body: [Keep tasks organized and visible.], icon: [✓]),
  (title: [Ideas], body: [Explore possibilities and create useful changes.], icon: [✦]),
  (title: [Database], body: [Store and retrieve information reliably.], icon: [▤]),
)

#four-feature-icon-cards(steps: steps, width: 20cm, direction: ltr)
#v(0.5cm)
#four-feature-icon-cards(steps: steps, width: 20cm, direction: rtl)
#print-group[
  #four-feature-icon-cards(steps: steps, width: 20cm, direction: rtl)
]
