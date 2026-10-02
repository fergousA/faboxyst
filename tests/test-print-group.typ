#import "../lib.typ": *
#set page(width: 13cm, height: auto, margin: 0.8cm)
#set text(font: "DejaVu Sans", size: 11pt)
#show: faboxyst.with(theme: "normal")

*Normal style before print group*

#garnet-box[The existing garnet style stays coloured.]

#print-group[
  #numbered-header-box(title: [مطبوعة], number: 12, direction: rtl)[
    نمط الطباعة لعنصر واحد فقط، مع بقاء اتجاه RTL.
  ]
  #v(0.25cm)
  #postit(title: [Note])[The print post-it is white with a black rule.]
]

*Normal style restored after the group*

#garnet-box[The normal garnet style returns here.]
