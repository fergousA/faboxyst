// Focused smoke test for the three bubble silhouettes, RTL mirroring, and print mode.
#import "../lib.typ": *

#set page(width: 24cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let sample = (
  (kind: "quote", title: [Quote], body: [A short statement worth remembering.]),
  (kind: "speech", title: [Dialogue], body: [A direct message to share.]),
  (kind: "thought", title: [Thought], body: [An idea to consider.]),
)

#hand-drawn-speech-bubbles(steps: sample, width: 20cm, direction: ltr)
#v(0.45cm)
#hand-drawn-speech-bubbles(steps: sample, width: 20cm, direction: rtl, dark: true)
#print-group[
  #hand-drawn-speech-bubbles(steps: sample, width: 20cm, direction: rtl)
]
