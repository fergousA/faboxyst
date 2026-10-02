// Focused coverage for number/title/body customization, RTL, dimensions and print.
#import "../lib.typ": *

#set page(width: 9cm, height: 9cm, margin: 0.5cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #kinds-text-box-1(
    number: [07],
    title: [Custom heading],
    body: [A focused test paragraph with enough text to wrap naturally in the narrow body column.],
    width: 6.8cm,
    height: 7cm,
    colour: rgb("#FBEFA0"),
    stroke-colour: rgb("#1F1D1C"),
    stroke-width: 1.8pt,
    number-colour: rgb("#64A0D6"),
  )
]
#pagebreak()
#set text(lang: "ar", dir: rtl)
#print-group[
  #align(center + horizon)[
    #kinds-text-box-1(
      number: [٢],
      title: [عنوان اختباري],
      body: [نص عربي تجريبي يوضح طريقة تدفق الفقرة ومحاذاتها داخل العمود الجانبي.],
      width: 6.8cm,
      height: 7cm,
      direction: rtl,
    )
  ]
]
