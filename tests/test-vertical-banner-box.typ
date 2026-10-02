// Focused regression: pointed banner, ribbon fold, number, RTL mirroring, and print output.
#import "../lib.typ": *

#set page(width: 9cm, height: auto, margin: 0.3cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#vertical-banner-box(
  number: [01],
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc. Suspendisse viverra sodales mauris.],
  width: 3.8cm,
  height: 7.7cm,
  direction: ltr,
  colour: rgb("#F7931F"),
)
#v(0.3cm)
#vertical-banner-box(
  number: [02],
  title: [لوريم إيبسوم],
  body: [نص موجز يشرح الفكرة بوضوح، ويعرض أهم التفاصيل والخطوات العملية. يمكن استخدام هذه المساحة لتوضيح السياق، وتحديد الأولويات، وإبراز النتيجة المتوقعة للقارئ.],
  width: 3.8cm,
  height: 7.7cm,
  direction: rtl,
  colour: rgb("#4CC1EF"),
)
#print-group[
  #vertical-banner-box(
    number: [01],
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc.],
    width: 3.8cm,
    height: 7.7cm,
    direction: ltr,
  )
]
