// Focused coverage for the style-5 preset on shared text-box component 2.
#import "../lib.typ": *

#set page(width: 7cm, height: 9cm, margin: 0.4cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #kinds-text-box-2(
    number: [5],
    title: [STYLE FIVE],
    body: [A focused paragraph for the narrow centered text-box layout.],
    width: 4cm,
    height: 7.3cm,
    colour: rgb("#A9D8F4"),
    shadow-colour: rgb("#8FC3E6"),
    number-colour: rgb("#FFE86D"),
    number-size: 29pt,
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#print-group[
  #align(center + horizon)[
    #kinds-text-box-2(
      number: [٥],
      title: [عنوان اختباري],
      body: [نص عربي تجريبي لاختبار الأسلوب الخامس في اتجاه الكتابة من اليمين إلى اليسار.],
      width: 4cm,
      height: 7.3cm,
      direction: rtl,
      colour: rgb("#A9D8F4"),
      shadow-colour: rgb("#8FC3E6"),
      number-colour: rgb("#FFE86D"),
      number-size: 29pt,
    )
  ]
]
