// Minimal standalone example: one post-it, no external packages or assets.
#import "../src/postit.typ": postit
#set page(margin: 2cm)
#set text(font: "DejaVu Sans", size: 11pt)

#postit(title: [Structure du texte explicatif])[
  Un post-it autonome, à largeur et hauteur adaptées au contenu.
]
