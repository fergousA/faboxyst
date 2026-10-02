// Focused coverage for the standalone card and the reusable shared-ribbon stack.
#import "../lib.typ": *

#set page(width: 12cm, height: 14cm, margin: 0.5cm, fill: white)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

// Standalone card remains independently configurable.
#align(center + horizon)[
  #three-color-infographic-card(
    title: [CUSTOM TITLE],
    body: [A focused landscape paragraph to check the editable text and colored panel.],
    width: 10cm,
    height: 3.9cm,
    colour: rgb("#CA5209"),
    spine-side: "end",
    spine-width: 1cm,
    stroke-colour: rgb("#8A3500"),
  )
]
#pagebreak()
// Two panels, negative spacing, one shared strip with a visible top/bottom overhang.
#align(center + horizon)[
  #three-color-infographic-stack(
    width: 10.2cm,
    card-height: 3.8cm,
    overlap: 0.7cm,
    spine-overhang: 0.4cm,
    spine-width: 1.1cm,
    spine-colour: rgb("#E3E1DE"),
    cards: (
      (title: [FIRST], body: [First panel for the two-card stack test.], colour: rgb("#4B84BE")),
      (title: [SECOND], body: [Second panel verifies overlap and the shared ribbon.], colour: rgb("#CA5209")),
    ),
  )
]
#pagebreak()
// RTL mirrors the ribbon to the right while retaining panel direction.
#set text(lang: "ar", dir: rtl)
#align(center + horizon)[
  #three-color-infographic-stack(
    width: 10.2cm,
    card-height: 3.8cm,
    overlap: 0.7cm,
    spine-overhang: 0.4cm,
    direction: rtl,
    spine-side: "start",
    spine-colour: rgb("#E3E1DE"),
    cards: (
      (title: [الأول], body: [نص عربي لاختبار اتجاه الكتابة وشريط المجموعة المشترك.], colour: rgb("#4B84BE")),
      (title: [الثاني], body: [بطاقة ثانية متداخلة مع الشريط الممتد أعلى وأسفل المجموعة.], colour: rgb("#C78D00")),
      (title: [الثالث], body: [بطاقة ثالثة للتحقق من الترتيب داخل الرصة.], colour: rgb("#CA5209")),
    ),
  )
]
#pagebreak()
// Print theme must retain contrast and render the common ribbon in grayscale.
#print-group[
  #align(center + horizon)[
    #three-color-infographic-stack(
      width: 10.2cm,
      card-height: 3.8cm,
      overlap: 0.7cm,
      spine-overhang: 0.4cm,
      cards: (
        (title: [PRINT CHECK], body: [Check grayscale contrast and the strip silhouette.], colour: rgb("#4B84BE")),
        (title: [SECOND PANEL], body: [Overlapping editable text remains legible in print.], colour: rgb("#C78D00")),
      ),
    )
  ]
]
