// Focused smoke test for alternating process cards: LTR, RTL and print.
#import "../lib.typ": *

#set page(width: 22cm, height: auto, margin: 1cm, fill: white)
#set text(font: "DejaVu Sans", size: 8pt)
#set par(leading: 0.42em)
#show: faboxyst.with(theme: themes.notebook)

#let sample = (
  (title: [Lorem Ipsum], body: [A short process explanation.], icon: image("../examples/assets/alternating-idea.svg", width: 0.8cm), print-icon: image("../examples/assets/alternating-idea-print.svg", width: 0.8cm)),
  (title: [Lorem Ipsum], body: [A short process explanation.], icon: image("../examples/assets/alternating-target.svg", width: 0.8cm), print-icon: image("../examples/assets/alternating-target-print.svg", width: 0.8cm)),
  (title: [Lorem Ipsum], body: [A short process explanation.], icon: image("../examples/assets/alternating-gears.svg", width: 0.8cm), print-icon: image("../examples/assets/alternating-gears-print.svg", width: 0.8cm)),
  (title: [Lorem Ipsum], body: [A short process explanation.], icon: image("../examples/assets/alternating-chart.svg", width: 0.8cm), print-icon: image("../examples/assets/alternating-chart-print.svg", width: 0.8cm)),
)

= LTR
#alternating-block-process(steps: sample, direction: ltr)

= RTL
#set text(lang: "ar", dir: rtl)
#alternating-block-process(steps: sample, direction: rtl)

= Print
#print-group[
  #alternating-block-process(steps: sample, direction: ltr)
  #alternating-block-process(steps: sample, direction: rtl)
]
