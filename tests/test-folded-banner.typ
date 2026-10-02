// Folded-banner layout regression: normal, explicit LTR/RTL, and print theme.
#import "../lib.typ": *

#set page(width: 17cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 10pt)
#show: faboxyst.with(theme: themes.arabic)

#folded-banner(
  title: [مرحلة الشرح],
  body: [شرح وأمثلة وروابط بين الأفكار، مع اتجاه RTL طبيعي.],
  icon: [⚙],
)
#v(0.2cm)
#folded-banner(
  title: [Forced LTR],
  body: [The same component also accepts an explicit direction override.],
  number: [02],
  direction: ltr,
  width: 82%,
  colour: rgb("#47BDE5"),
)

#show: faboxyst.with(theme: "print")
#v(0.3cm)
#folded-banner(
  title: [Print mode],
  body: [Geometry is retained; coloured panels become white with black rules.],
  number: [03],
  icon: [✦],
)
