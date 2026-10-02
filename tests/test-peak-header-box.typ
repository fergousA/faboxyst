// Focused regression test: peak notch, number placement, mirrored RTL, and print mode.
#import "../lib.typ": *

#set page(width: 10cm, height: auto, margin: 0.45cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#peak-header-box(
  title: [Momentum],
  body: [A clear milestone gives the team a visible target and a reason to keep moving forward.],
  icon: image("../examples/assets/peak-header-bars-coral.svg", width: 0.62cm),
  print-icon: image("../examples/assets/peak-header-bars-black.svg", width: 0.62cm),
  number: [01],
  width: 5.0cm,
  height: 4.65cm,
  direction: ltr,
)
#v(0.4cm)
#peak-header-box(
  title: [تقدّم ملموس],
  body: [يمنح الإنجاز الواضح الفريق هدفاً مشتركاً ودافعاً لمواصلة التقدّم.],
  icon: image("../examples/assets/peak-header-bars-teal.svg", width: 0.62cm),
  print-icon: image("../examples/assets/peak-header-bars-black.svg", width: 0.62cm),
  number: [٠١],
  width: 5.0cm,
  height: 4.65cm,
  direction: rtl,
  dark: true,
  colour: rgb("#2E8EAA"),
)
#print-group[
  #peak-header-box(
    title: [Momentum],
    body: [A clear milestone gives the team a visible target and a reason to keep moving forward.],
    icon: image("../examples/assets/peak-header-bars-coral.svg", width: 0.62cm),
    print-icon: image("../examples/assets/peak-header-bars-black.svg", width: 0.62cm),
    number: [01],
    width: 5.0cm,
    height: 4.65cm,
    direction: ltr,
  )
]
#print-group[
  #peak-header-box(
    title: [تقدّم ملموس],
    body: [يمنح الإنجاز الواضح الفريق هدفاً مشتركاً ودافعاً لمواصلة التقدّم.],
    icon: image("../examples/assets/peak-header-bars-teal.svg", width: 0.62cm),
    print-icon: image("../examples/assets/peak-header-bars-black.svg", width: 0.62cm),
    number: [٠١],
    width: 5.0cm,
    height: 4.65cm,
    direction: rtl,
  )
]
