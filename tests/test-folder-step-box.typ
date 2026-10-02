// Focused regression test: layered folder contour, foreground step, RTL, and print.
#import "../lib.typ": *

#set page(width: 11cm, height: auto, margin: 0.4cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#folder-step-box(
  title: [Plan the Work],
  body: [Capture the key actions, owners, and timing in one easy-to-scan folder.],
  icon: image("../examples/assets/folder-step-clipboard-navy.svg", width: 0.62cm),
  print-icon: image("../examples/assets/folder-step-clipboard-black.svg", width: 0.62cm),
  number: [01],
  width: 5.9cm,
  front-height: 3.3cm,
  folder-height: 2.55cm,
  direction: ltr,
)
#v(0.4cm)
#folder-step-box(
  title: [تنظيم العمل],
  body: [اجمع المهام والمسؤوليات والمواعيد في صندوق واحد يسهل الرجوع إليه.],
  icon: image("../examples/assets/folder-step-clipboard-white.svg", width: 0.62cm),
  print-icon: image("../examples/assets/folder-step-clipboard-black.svg", width: 0.62cm),
  number: [01],
  width: 5.9cm,
  front-height: 3.3cm,
  folder-height: 2.55cm,
  direction: rtl,
  dark: true,
  colour: rgb("#27B9C9"),
)
#print-group[
  #folder-step-box(
    title: [Plan the Work],
    body: [Capture the key actions, owners, and timing in one easy-to-scan folder.],
    icon: image("../examples/assets/folder-step-clipboard-navy.svg", width: 0.62cm),
    print-icon: image("../examples/assets/folder-step-clipboard-black.svg", width: 0.62cm),
    number: [01],
    width: 5.9cm,
    front-height: 3.3cm,
    folder-height: 2.55cm,
    direction: ltr,
  )
]
#print-group[
  #folder-step-box(
    title: [تنظيم العمل],
    body: [اجمع المهام والمسؤوليات والمواعيد في صندوق واحد يسهل الرجوع إليه.],
    icon: image("../examples/assets/folder-step-clipboard-white.svg", width: 0.62cm),
    print-icon: image("../examples/assets/folder-step-clipboard-black.svg", width: 0.62cm),
    number: [01],
    width: 5.9cm,
    front-height: 3.3cm,
    folder-height: 2.55cm,
    direction: rtl,
  )
]
