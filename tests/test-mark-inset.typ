// Focused regression test: horizontal and vertical mark inset.
// From the package directory:
//   typst compile tests/test-mark-inset.typ tests/test-mark-inset.pdf --root .
#import "../lib.typ": mark

#set page(width: 18cm, height: 12cm, margin: 1cm)
#set text(size: 12pt)

#mark(
  kind: "fan",
  colour: purple,
  fill: luma(90),
  inset: (x: 0.15cm, y: 0.10cm),
)[
  fan avec inset horizontal et vertical
]

#v(1cm)

#mark(
  kind: "bracket",
  colour: teal,
  fill: luma(90),
  inset: 0.18cm,
)[
  bracket avec inset sur les deux axes
]

#v(1cm)

#mark(
  kind: "circle",
  colour: orange,
  inset: (x: 0.12cm, y: 0.16cm),
)[
  circle avec inset vertical
]

#v(1cm)

#mark(
  kind: "underline",
  colour: rgb("#C0392B"),
  inset: 0.10cm,
)[
  underline avec inset
]
