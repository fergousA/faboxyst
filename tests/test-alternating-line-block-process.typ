#import "../lib.typ": *
#set page(width: 22cm, height: auto, margin: 1cm)
#show: faboxyst.with(theme: themes.notebook)

#alternating-line-block-process(
  direction: ltr,
  steps: (
    (title: [One], body: [A short first step.]),
    (title: [Two], body: [A short second step.]),
    (title: [Three], body: [A short third step.]),
    (title: [Four], body: [A short fourth step.]),
  ),
)
#v(0.5cm)
#alternating-line-block-process(
  direction: rtl,
  steps: (
    (title: [الأول], body: [خطوة أولى قصيرة.]),
    (title: [الثاني], body: [خطوة ثانية قصيرة.]),
  ),
)
