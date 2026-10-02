// Focused coverage for the shared styles 3/4 component and number placement.
#import "../lib.typ": *

#set page(width: 11cm, height: 8cm, margin: 0.4cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #kinds-text-box-3(
    number: [3],
    number-position: "center",
    title: [Custom heading],
    body: [A focused paragraph for this wide numbered card, with enough words to wrap cleanly in the body column.],
    width: 8.6cm,
    height: 6.1cm,
    colour: rgb("#C5E6F8"),
    shadow-colour: rgb("#AFCFE5"),
    stroke-colour: rgb("#211F1D"),
    stroke-width: 1.8pt,
    number-colour: rgb("#FFE86D"),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#print-group[
  #align(center + horizon)[
    #kinds-text-box-3(
      number: [4],
      number-position: "lower",
      title: [عنوان اختباري],
      body: [نص عربي تجريبي للاختبار في اتجاه الكتابة من اليمين إلى اليسار.],
      width: 8.6cm,
      height: 6.1cm,
      direction: rtl,
      colour: rgb("#FFF0A6"),
      number-colour: rgb("#68A1D5"),
    )
  ]
]
