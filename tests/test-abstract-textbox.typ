// Focused layout test for abstract-textbox: RTL, partial width, and print ink.
#import "../lib.typ": *

#set page(width: 16cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.arabic)

#abstract-textbox(
  title: [مرحلة الشرح],
  body: [شرح وأمثلة وروابط بين الأفكار.],
  icon: [⚙],
  width: 88%,
  backing-offset: (x: 0.48cm, y: 0.20cm),
  min-height: 5.2cm,
)

#show: faboxyst.with(theme: "print")
#abstract-textbox(
  title: [Print mode],
  body: [White faces; title, body and number should all be black.],
  number: [02],
  icon: [✦],
  width: 72%,
  min-height: 5.2cm,
)
