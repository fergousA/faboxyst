// Focused composite coverage: adjustable sizing, child content, RTL and print.
#import "../lib.typ": *

#set page(width: 11cm, height: 16cm, margin: 0.45cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #hand-drawn-business-brochure-card(
    width: 8.3cm,
    min-height: 12cm,
    title: [Custom title],
    photo-content: [Custom photo slot],
    ribbon-colour: rgb("#F6B72D"),
    photo-colour: rgb("#D3EEF7"),
    bullet-colour: rgb("#31B5D8"),
    bullet-items: (
      [First custom item.],
      [Second custom item.],
    ),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#print-group[
  #align(center + horizon)[
    #hand-drawn-business-brochure-card(
      width: 8.3cm,
      min-height: 12cm,
      direction: rtl,
      title: [عنوان مخصص],
      photo-placeholder: [مكان صورتك],
      bullet-items: (
        [نص عربي أول للاختبار.],
        [نص عربي ثانٍ للاختبار.],
      ),
    )
  ]
]
