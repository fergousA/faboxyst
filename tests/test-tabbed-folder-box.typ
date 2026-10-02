// Focused regression test: single folder box, mirrored RTL, and grayscale print.
#import "../lib.typ": *

#set page(width: 12cm, height: auto, margin: 0.45cm)
#set text(font: "DejaVu Sans", size: 9pt)
#show: faboxyst.with(theme: themes.notebook)

#tabbed-folder-box(
  title: [KEY PRIORITY],
  body: [Keep related ideas together. Use this folder-style box for a concise summary or project update.],
  icon: image("../examples/assets/tabbed-folder-check-white.svg", width: 0.58cm),
  print-icon: image("../examples/assets/tabbed-folder-check-black.svg", width: 0.58cm),
  width: 8.2cm,
  body-height: 2.2cm,
  direction: ltr,
)
#v(0.4cm)
#tabbed-folder-box(
  title: [ملخّص التنفيذ],
  body: [اجمع الأفكار المترابطة في موضع واحد، واستخدم هذا الصندوق لعرض أولوية أو تحديث موجز عن المشروع.],
  icon: image("../examples/assets/tabbed-folder-check-white.svg", width: 0.58cm),
  print-icon: image("../examples/assets/tabbed-folder-check-black.svg", width: 0.58cm),
  width: 8.2cm,
  body-height: 2.2cm,
  direction: rtl,
  dark: true,
  colour: rgb("#24B7C8"),
)
#print-group[
  #tabbed-folder-box(
    title: [KEY PRIORITY],
    body: [Keep related ideas together. Use this folder-style box for a concise summary or project update.],
    icon: image("../examples/assets/tabbed-folder-check-white.svg", width: 0.58cm),
    print-icon: image("../examples/assets/tabbed-folder-check-black.svg", width: 0.58cm),
    width: 8.2cm,
    body-height: 2.2cm,
    direction: ltr,
  )
]
#print-group[
  #tabbed-folder-box(
    title: [ملخّص التنفيذ],
    body: [اجمع الأفكار المترابطة في موضع واحد، واستخدم هذا الصندوق لعرض أولوية أو تحديث موجز عن المشروع.],
    icon: image("../examples/assets/tabbed-folder-check-white.svg", width: 0.58cm),
    print-icon: image("../examples/assets/tabbed-folder-check-black.svg", width: 0.58cm),
    width: 8.2cm,
    body-height: 2.2cm,
    direction: rtl,
  )
]
