// Un atlas de terrain pour un archipel qui change de place pendant la nuit.
#import "../lib.typ": *

#set page(width: 42cm, height: 29.7cm, margin: (x: 1.4cm, y: 0.9cm),
  fill: rgb("#F4ECD8"))
#show: faboxyst.with(theme: make-theme(
  base: themes.blueprint,
  ink: rgb("#18384A"),
  paper: rgb("#F4ECD8"),
  accent: rgb("#E15D43"),
  seed: 47,
  roughness: 0.55,
))

#ornatebox(
  title: [L'ARCHIPEL DES OMBRES MIGRANTES],
  title-style: "sash",
  title-align: center,
  colour: rgb("#18384A"),
  gold: rgb("#D8B86A"),
  edge: "palmette",
  edge-sides: ("start", "end"),
  corner: (top: "scroll", bottom: "scroll"),
  corner-size: 0.85cm,
  centre: (bottom: "flourish"),
  caps: ("arch", "arch"),
  badge: [07],
  badge-label: [CARTES INTERDITES],
  sash-inset: (0.8cm, 0.8cm),
  title-size: 1.6em,
)[
  #align(center)[
    #text(size: 8pt, tracking: 2pt, weight: "bold", fill: rgb("#B6533E"))[
      SOCIÉTÉ DES CARTOGRAPHES DU SOMMEIL
    ]
    #v(2pt)
    #text(size: 10pt, style: "italic", fill: rgb("#536D68"))[
      Manuel de reconnaissance des îles qui n'existent qu'à marée basse
    ]
  ]
]

#v(3mm)

#set text(size: 9pt, fill: rgb("#18384A"))
#folded-banner(
  title: [AVIS AUX NAVIGATEURS],
  body: [Ne jamais accoster sur une île dont l'ombre pointe vers le soleil. À l'aube, les rivages se replient comme des cartes et emportent les amarres, les noms propres et parfois les équipages.],
  number: [00],
  icon: [☾],
  colour: rgb("#E6B64C"),
  width: 100%,
  text-colour: rgb("#18384A"),
  title-size: 14pt,
  body-size: 11pt,
)

#v(3mm)
#text(size: 8pt, weight: "bold", tracking: 1pt, fill: rgb("#B6533E"))[
  TROIS ESPÈCES OBSERVÉES — NE PAS LES APPELER PAR LEUR NOM
]
#v(1mm)

#puzzle-tab-cards(
  width: 100%,
  height: 6.2cm,
  title-size: 14pt,
  body-size: 9.5pt,
  background: rgb("#18384A"),
  colours: (rgb("#E15D43"), rgb("#D89B32"), rgb("#4F8A78")),
  steps: (
    (
      title: [Île-baleine],
      body: [Dorsale noire, forêt de varech et fanal vivant. Elle plonge dès qu'on mesure sa côte.],
      icon: [◉],
    ),
    (
      title: [Atoll-miroir],
      body: [Reproduit le navire avec un jour de retard. Le reflet montre toujours un passager de plus.],
      icon: [◇],
    ),
    (
      title: [Récif-verger],
      body: [Ses fruits murmurent les coordonnées d'une terre que les cartes ont oubliée.],
      icon: [✳],
    ),
  ),
)

#v(3mm)
#grid(columns: (1.25fr, 1fr), column-gutter: 8mm, align: top,
  [
    #twisted-ribbon-rows(
      width: 100%,
      row-height: 2cm,
      gap: 0.22cm,
      caption: "RITUEL DE PASSAGE",
      colours: (rgb("#C25445"), rgb("#287A83")),
      title-size: 12pt,
      body-size: 9pt,
      steps: (
        (
          title: [01 · À l'approche],
          body: [Jetez une bouteille vide : si elle revient pleine d'étoiles, changez de cap.],
          icon: [☄],
        ),
        (
          title: [02 · Au départ],
          body: [Laissez sur le rivage une histoire vraie ; emportez une histoire inventée.],
          icon: [↗],
        ),
      ),
    )
    #v(2mm)
    #tornpage(title: [NOTE ARRACHÉE AU JOURNAL DE BORD], width: 100%)[
      À la troisième cloche, nous avons vu nos propres fenêtres éclairées
      sur une côte sans maisons. Le mousse a reconnu son rire dans les vagues.
      J'ai ordonné de barrer l'île ; l'encre a séché en forme de serrure.
    ]
  ],
  [
    #postit-butterfly(title: [À NE PAS OUBLIER])[
      Quand la brume prononce votre prénom, répondez par celui d'un mort.
      Les îles imitent les vivants, mais jamais les disparus.
    ]
    #v(3mm)
    #rosettebox(title: [ESPÈCE NON CLASSÉE], ink: rgb("#18384A"),
      gold: rgb("#D8B86A"), leaf: rgb("#4F8A78"))[
      L'ombre a six doigts. Aucun corps ne lui correspond.
    ]
  ],
)

#v(3mm)
#film-strip(
  width: 100%,
  height: 2.4cm,
  film: rgb("#263A43"),
  frames: (
    [#text(size: 8pt)[19:04] #linebreak() #text(size: 10pt)[La mer se tait.]],
    [#text(size: 8pt)[19:17] #linebreak() #text(size: 10pt)[Une montagne dérive.]],
    [#text(size: 8pt)[19:31] #linebreak() #text(size: 10pt)[Nos ombres restent à bord.]],
    [#text(size: 8pt)[19:32] #linebreak() #text(size: 10pt)[Aucune île sur la carte.]],
  ),
)

#v(2mm)
#align(right, text(size: 7pt, style: "italic", fill: rgb("#536D68"))[
  Extrait du carnet du capitaine N. Aster · dernière position connue : nulle part
])
