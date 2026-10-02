// Focused regression: one accent-edge card mirrored for RTL and print.
#import "../lib.typ": *

#set page(width: 12.5cm, height: auto, margin: 0.35cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#two-column-information-card(
  title: [Project Summary],
  body: [A concise overview of the key decision, its context, and the next action for the team.],
  width: 9.8cm,
  height: 2.3cm,
  direction: ltr,
  accent-colour: rgb("#1AA1B2"),
)
#v(0.3cm)
#two-column-information-card(
  title: [موجز المشروع],
  body: [ملخص واضح للفكرة، وسياقها، والخطوة التالية التي تساعد الفريق على التقدم.],
  width: 9.8cm,
  height: 2.3cm,
  direction: rtl,
  accent-colour: rgb("#38C3D4"),
  panel-colour: rgb("#092B3D"),
  title-colour: rgb("#F5F7F8"),
  text-colour: rgb("#D4DEE3"),
)
#print-group[
  #two-column-information-card(
    title: [Project Summary],
    body: [A concise overview of the key decision and its next action.],
    width: 9.8cm,
    height: 2.3cm,
    direction: ltr,
  )
]
