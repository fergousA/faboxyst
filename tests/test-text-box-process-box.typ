// Focused regression test for the dimensional Text Box Process card: LTR, RTL, print.
#import "../lib.typ": *

#set page(width: 11.5cm, height: 14cm, margin: 0.35cm)
#set text(font: "DejaVu Sans", size: 10pt)
#show: faboxyst.with(theme: themes.notebook)

#align(center + horizon)[
  #text-box-process-box(
    title: [LOREM IPSUM],
    number: [01],
    body: [Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non ornare dolor, non iaculis nibh. Morbi sed massa nec diam porttitor sodales. #parbreak() Vivamus molestie nisl sed erat sodales dignissim. Duis sed diam sed quam pharetra accumsan. #parbreak() Donec sit amet urna eros. Donec semper diam nec varius facilisis. Praesent varius tempus magna, quis feugiat elit eros sed euismod lacinia.],
    colour: rgb("#3E6188"),
    direction: ltr,
  )
]
#pagebreak()
#set page(fill: rgb("#002033"))
#align(center + horizon)[
  #text-box-process-box(
    title: [خطة العمل],
    number: [٠٢],
    body: [حددوا الهدف بوضوح، ثم رتّبوا الخطوات الرئيسية وحدّدوا موعداً مناسباً لكل خطوة. #parbreak() وزّعوا المسؤوليات، وشاركوا المستجدات، وأزيلوا العوائق التي تؤخر التنفيذ. #parbreak() راجعوا النتائج بعد المرحلة الأولى، ثم اتفقوا على الإجراء التالي.],
    colour: rgb("#43BDE0"),
    direction: rtl,
  )
]
#pagebreak()
#set page(fill: white)
#print-group[
  #align(center + horizon)[
    #text-box-process-box(
      title: [LOREM IPSUM],
      number: [01],
      body: [Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non ornare dolor, non iaculis nibh. Morbi sed massa nec diam porttitor sodales. #parbreak() Vivamus molestie nisl sed erat sodales dignissim. Duis sed diam sed quam pharetra accumsan. #parbreak() Donec sit amet urna eros. Donec semper diam nec varius facilisis. Praesent varius tempus magna, quis feugiat elit eros sed euismod lacinia.],
      colour: rgb("#3E6188"),
      direction: ltr,
    )
  ]
]
#pagebreak()
#print-group[
  #align(center + horizon)[
    #text-box-process-box(
      title: [خطة العمل],
      number: [٠٢],
      body: [حددوا الهدف بوضوح، ثم رتّبوا الخطوات الرئيسية وحدّدوا موعداً مناسباً لكل خطوة. #parbreak() وزّعوا المسؤوليات، وشاركوا المستجدات، وأزيلوا العوائق التي تؤخر التنفيذ. #parbreak() راجعوا النتائج بعد المرحلة الأولى، ثم اتفقوا على الإجراء التالي.],
      colour: rgb("#43BDE0"),
      direction: rtl,
    )
  ]
]
