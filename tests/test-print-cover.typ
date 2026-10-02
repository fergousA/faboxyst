// Full-page cover in print mode: generic monochrome frame, text and RTL anchors.
#import "../lib.typ": *
#set page(width: 15cm, height: 22cm, margin: 1cm)
#set text(lang: "ar", dir: rtl, font: "DejaVu Sans", size: 10pt)
#show: faboxyst.with(theme: "print")

#book-cover(
  style: "guilloche",
  title: [مدخل إلى الرياضيات],
  subtitle: [Introduction aux mathématiques],
  author: [ليلى بن صالح],
  author-label: [تأليف],
  series: [سلسلة المعارف],
  level: [السنة الأولى],
  year: [2026],
  badge: [١٢],
  badge-label: [المستوى],
  publisher: [منشورات الواحة],
  place-line: [الوادي · الجزائر],
  note: [طبعة تعليمية],
  direction: rtl,
)
