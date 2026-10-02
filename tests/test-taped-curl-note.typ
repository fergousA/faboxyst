// Focused regression: tape, curled lower corner, Arabic RTL, and grayscale.
#import "../lib.typ": *

#set page(width: 13.2cm, height: 8.8cm, margin: 0.35cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #taped-curl-note(
    body: [• You can replace this sample text.#linebreak()• Capture one useful idea.#linebreak()• Return to it when needed.],
    width: 5.9cm, height: 6.8cm, stroke-colour: rgb("#383532"), stroke-width: 1.55pt,
    icon: [✦], icon-position: "top", icon-size: 0.30cm, icon-colour: rgb("#383532"),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #taped-curl-note(
    body: [• دوّن الفكرة المهمة.#linebreak()• أضف ملاحظة قصيرة.#linebreak()• عُد إليها عند الحاجة.],
    width: 5.9cm, height: 6.8cm, stroke-colour: rgb("#383532"), stroke-width: 1.55pt,
    icon: [✦], icon-position: "top", icon-size: 0.30cm, icon-colour: rgb("#383532"), direction: rtl,
    paper: rgb("#F1DADD"), tape-colour: rgb("#D39299"),
  )
]
#set text(lang: "en", dir: ltr)
#pagebreak()
#print-group[
  #taped-curl-note(
    body: [• You can replace this sample text.#linebreak()• Capture one useful idea.#linebreak()• Return to it when needed.],
    width: 5.9cm, height: 6.8cm, stroke-colour: rgb("#383532"), stroke-width: 1.55pt,
    icon: [✦], icon-position: "top", icon-size: 0.30cm, icon-colour: rgb("#383532"),
  )
]
