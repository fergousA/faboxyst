// Focused regression test: mark fill for fan and bracket.
// From the package directory:
//   typst compile tests/test-mark-fill.typ tests/test-mark-fill.pdf --root .
#import "../lib.typ": mark

#set page(width: 16cm, height: 8cm, margin: 1cm)
#set text(size: 12pt)

#mark(
  kind: "fan",
  colour: rgb("#7B2CBF"),
  fill: rgb("#CDB4DB"),
)[
  fan rempli
]

#v(1cm)

#mark(
  kind: "bracket",
  colour: rgb("#006D77"),
  fill: rgb("#83C5BE"),
)[
  bracket rempli
]

#v(1cm)

#mark(
  kind: "fan",
  colour: rgb("#C0392B"),
  fill: auto,
)[
  fill automatique
]
