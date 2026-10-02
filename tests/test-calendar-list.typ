// Focused smoke test for the calendar-list cards and their print/RTL variants.
#import "../lib.typ": *

#set page(width: 22cm, height: auto, margin: 1cm)
#set text(font: "DejaVu Sans", size: 8pt)
#show: faboxyst.with(theme: themes.notebook)

#let sample = (
  (title: [PLAN], body: [Review the week and set the important dates.]),
  (title: [CHECK], body: [Track progress and note any follow-up tasks.]),
  (title: [REMIND], body: [Prepare for the next appointment.]),
  (title: [DONE], body: [Record outcomes and next steps.]),
)

#calendar-list(steps: sample, width: 18cm, columns: 4, direction: ltr)
#v(0.5cm)
#calendar-list(steps: sample, width: 16cm, columns: 2, direction: rtl)
#v(0.5cm)
#print-group[
  #calendar-list(steps: sample, width: 18cm, columns: 4, direction: ltr)
]
