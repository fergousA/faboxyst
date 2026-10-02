// Focused coverage for custom numbering, direction, colors and print.
#import "../lib.typ": *

#set page(width: 7cm, height: 9cm, margin: 0.4cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #kinds-text-box-2(
    number: [07],
    title: [Custom heading],
    body: [A focused paragraph for this narrow centered numbered component.],
    width: 4cm,
    height: 7.3cm,
    colour: white,
    shadow-colour: rgb("#C7E5F5"),
    stroke-colour: rgb("#211F1D"),
    stroke-width: 1.8pt,
    number-colour: rgb("#68A1D5"),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#print-group[
  #align(center + horizon)[
    #kinds-text-box-2(
      number: [٢],
      title: [عنوان اختباري],
      body: [نص عربي تجريبي يوضح اتجاه الكتابة ومحاذاة هذا النوع من الصناديق.],
      width: 4cm,
      height: 7.3cm,
      direction: rtl,
    )
  ]
]
