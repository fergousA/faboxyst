// Focused test for nested outer/middle/core cards, RTL mirroring, and print mode.
#import "../lib.typ": *

#set page(width: 24cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let levels = (
  (title: [Broad context], body: [Set out the wider field and its relationship to this topic.]),
  (title: [Focused scope], body: [Identify the narrower audience or area for attention.]),
  (title: [Core priority], body: [State the essential choice or action.]),
)

#concentric-tier-cards(levels: levels, width: 22cm, direction: ltr)
#v(0.5cm)
#concentric-tier-cards(levels: levels, width: 22cm, direction: rtl, dark: true)
#print-group[
  #concentric-tier-cards(levels: levels, width: 22cm, direction: rtl)
]
