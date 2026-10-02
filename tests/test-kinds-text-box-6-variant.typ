// Focused coverage for the style-6 preset on shared text-box component 1.
#import "../lib.typ": *

#set page(width: 9cm, height: 9cm, margin: 0.5cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #kinds-text-box-1(
    number: [6],
    title: [STYLE SIX],
    body: [A focused paragraph for the tall numbered text-box layout.],
    width: 6.8cm,
    height: 7cm,
    colour: white,
    shadow-colour: rgb("#D8EAF5"),
    number-colour: rgb("#68A1D5"),
    stroke-colour: rgb("#211F1D"),
    stroke-width: 1.8pt,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#print-group[
  #align(center + horizon)[
    #kinds-text-box-1(
      number: [٦],
      title: [عنوان اختباري],
      body: [نص عربي تجريبي لاختبار الأسلوب السادس.],
      width: 6.8cm,
      height: 7cm,
      direction: rtl,
      colour: white,
      shadow-colour: rgb("#D8EAF5"),
      number-colour: rgb("#68A1D5"),
    )
  ]
]
