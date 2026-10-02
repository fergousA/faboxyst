// Focused smoke test: three-card layout in LTR, RTL, and print mode.
#import "../lib.typ": *

#set page(width: 24cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let steps = (
  (title: [Discover], body: [Frame the question and gather useful insights.], icon: [✦]),
  (title: [Explore], body: [Compare options and test a promising direction.], icon: [◎]),
  (title: [Achieve], body: [Take focused action and measure your progress.], icon: [✓]),
)

#three-step-highlight-cards(steps: steps, width: 20cm, direction: ltr)
#v(0.5cm)
#three-step-highlight-cards(steps: steps, width: 20cm, direction: rtl)
#v(0.5cm)
#print-group[
  #three-step-highlight-cards(steps: steps, width: 20cm, direction: ltr)
]
