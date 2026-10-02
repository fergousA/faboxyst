#import "../src/postit.typ": postit, study-postit
#import "../src/postit-butterfly.typ": postit-butterfly
#import "../lib.typ": garnet-box, numbered-header-box
#set page(width: 15cm, height: auto, margin: 1cm)
#set text(size: 10pt)

#postit[Adaptive note.] 
#postit(width: 8cm, height: 3cm, title: [Sized note],
  radius: 0.30cm, line-color: rgb("#A84322"),
  line-length: 88%, shadow-length: 92%)[Explicit settings.] 
#study-postit(direction: ltr, fill: rgb("#FFF1A6"),
  line-length: 6cm, shadow-length: 6.5cm)[Alias and custom fill.] 
#postit-butterfly(direction: ltr, title: [Lifted wings],
  line-length: 92%, shadow-length: 94%, tab-drop: 0.04cm,
  shadow-red-mix: 15%, shadow-center-darken: 20%, shadow-edge-darken: 5%)[Native butterfly shadow.] 
#postit-butterfly(direction: rtl, title: [ملاحظة مرفوعة])[ظل مرتفع.] 
#postit-butterfly(direction: ltr, shadow-gradient-in: rgb("#A93C1F"),
  shadow-gradient-out: rgb("#E7A72C"))[Stops de gradient réglables.] 
#set text(lang: "ar")
#postit(direction: rtl, title: [ملاحظة])[اتجاه عربي تلقائي وصريح.]
#garnet-box(direction: ltr)[Auto-sized garnet box.]
#garnet-box(width: 8cm, inset: 0.30cm, direction: rtl)[صندوق بلون الرمان مع محاذاة إلى اليمين.]
#numbered-header-box(title: [Automatic section])[Adaptive body with automatic numbering.]
#numbered-header-box(title: [Section personnalisée], number: 7,
  width: 8cm, inset: (0.5cm, 0.35cm), direction: rtl)[
  Largeur et inset réglables avec numéro personnalisé.
]
