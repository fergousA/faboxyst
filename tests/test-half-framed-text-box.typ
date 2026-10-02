// Focused regression: diagonal half-frames, title/icon header, RTL mirroring, and print.
#import "../lib.typ": *

#set page(width: 9cm, height: auto, margin: 0.25cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#half-framed-text-box(
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.],
  icon: image("../examples/assets/half-framed-target-yellow.svg", width: 0.50cm),
  print-icon: image("../examples/assets/half-framed-target-print.svg", width: 0.50cm),
  width: 5.2cm,
  height: 7.7cm,
  direction: ltr,
  colour: rgb("#FFCC4C"),
)
#v(0.3cm)
#half-framed-text-box(
  title: [رؤية واضحة],
  body: [تساعد هذه المساحة على عرض الفكرة بوضوح، وتنظيم المعلومات المهمة في بطاقة واحدة سهلة القراءة. يمكن تخصيص العنوان والأيقونة والألوان بما يلائم المحتوى والجمهور المستهدف.

استخدم الفقرة الثانية لإضافة شرح أو مثال مختصر، مع الحفاظ على تسلسل منطقي بين النقاط.],
  icon: image("../examples/assets/half-framed-timer-blue.svg", width: 0.50cm),
  print-icon: image("../examples/assets/half-framed-timer-print.svg", width: 0.50cm),
  width: 5.2cm,
  height: 7.7cm,
  direction: rtl,
  colour: rgb("#4CC1EF"),
)
#print-group[
  #half-framed-text-box(
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.],
    icon: image("../examples/assets/half-framed-target-yellow.svg", width: 0.50cm),
    print-icon: image("../examples/assets/half-framed-target-print.svg", width: 0.50cm),
    width: 5.2cm,
    height: 7.7cm,
    direction: ltr,
  )
]
