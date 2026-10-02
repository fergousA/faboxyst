// Focused regression: parchment silhouette, title capsule, mirrored RTL, and print output.
#import "../lib.typ": *

#set page(width: 12cm, height: auto, margin: 0.3cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#four-step-parchment-process(
  title: [Lorem Ipsum],
  body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc.],
  icon: image("../examples/assets/four-step-hourglass-red.svg", width: 0.90cm),
  print-icon: image("../examples/assets/four-step-hourglass-print.svg", width: 0.90cm),
  width: 6cm,
  height: 6.6cm,
  direction: ltr,
  colour: rgb("#F25544"),
  text-colour: white,
)
#v(0.3cm)
#four-step-parchment-process(
  title: [لوريم إيبسوم],
  body: [نص موجز يشرح الفكرة بوضوح، ويعرض أهم التفاصيل والخطوات العملية. يمكن استخدام هذه المساحة لتوضيح السياق، وتحديد الأولويات، وإبراز النتيجة المتوقعة للقارئ.],
  icon: image("../examples/assets/four-step-bulb-green.svg", width: 0.90cm),
  print-icon: image("../examples/assets/four-step-bulb-print.svg", width: 0.90cm),
  width: 6cm,
  height: 6.6cm,
  direction: rtl,
  dark: true,
  colour: rgb("#5B9E67"),
  text-colour: white,
)
#print-group[
  #four-step-parchment-process(
    title: [Lorem Ipsum],
    body: [Lorem ipsum dolor sit amet, nibh est. A magna maecenas, quam magna nec quis, lorem nunc.],
    icon: image("../examples/assets/four-step-hourglass-red.svg", width: 0.90cm),
    print-icon: image("../examples/assets/four-step-hourglass-print.svg", width: 0.90cm),
    width: 6cm,
    height: 6.6cm,
    direction: ltr,
  )
]
