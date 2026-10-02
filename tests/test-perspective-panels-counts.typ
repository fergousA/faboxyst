// Edge-case regression: two panels (even midpoint) and a single panel (no gaps).
#import "../lib.typ": *

#set page(width: 13.2cm, height: 9.0cm, margin: 0.35cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #perspective-panels(
    (
      (title: [First], number: [01], body: [A two-panel set retains its perspective.], colour: rgb("#F4A51C")),
      (title: [Second], number: [02], body: [Widths and the single gap stay configurable.], colour: rgb("#43B9D3")),
    ),
    panel-widths: (4.1cm, 3.2cm),
    gap: 0.25cm,
    direction: rtl,
    height: 6cm,
  )
]
#pagebreak()
#align(center + horizon)[
  #perspective-panels(
    ((title: [Solo], number: [01], body: [A one-panel row does not require a gap.], colour: rgb("#77A96F")),),
    height: 6cm,
  )
]
