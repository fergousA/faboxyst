// A one-page celestial bestiary, engraved with nibart's elliptical nibs.
#import "../lib.typ": *
#import "@preview/cetz:0.5.2"
#import cetz.draw

#show: plate-page.with(
  number: [PLANCHE IX · COSMOGRAPHIE],
  title: [LE CÉTACÉ DES ABYSSES CÉLESTES],
  subtitle: [atlas des marées lunaires, observées depuis l'Observatoire d'Alger],
  margin: (x: 16mm, y: 14mm),
  title-gap: 5mm,
  height: 230mm,
)

#let ink = antique-palette.ink
#let pale = antique-palette.pale-ink
#let paper = antique-palette.paper

#let orbit-points(cx, cy, rx, ry, tilt: 0deg, count: 181) = range(count).map(i => {
  let a = 360deg * i / (count - 1)
  let x = rx * calc.cos(a)
  let y = ry * calc.sin(a)
  (cx + x * calc.cos(tilt) - y * calc.sin(tilt),
   cy + x * calc.sin(tilt) + y * calc.cos(tilt))
})

#let etch(points, width: 0.018, angle: 24deg, closed: false,
          dash: none, pressure: none, colour: ink) = nib-stroke(
  polyline-path(points),
  pen: (width * 1.7, width * 0.55, angle),
  closed: closed,
  dash: dash,
  pressure: pressure,
  fill: colour,
)

#set text(size: 9pt)
Entre la Lune noyée et la neuvième marée, les marins signalent un immense
cétacé céleste. Son dos porte un archipel de lanternes ; son chant dévie
l'aiguille de la boussole vers le pôle qui n'a pas de nom.

#v(3mm)

#cetz.canvas(length: 1cm, {
  let cx = 7.5
  let cy = 5.1

  // Three tilted tracks make a mechanical armillary around the creature.
  for (rx, ry, tilt, weight) in (
    (6.45, 3.65, 0deg, 0.019),
    (5.95, 2.55, 48deg, 0.014),
    (6.55, 1.75, -37deg, 0.012),
  ) {
    etch(orbit-points(cx, cy, rx, ry, tilt: tilt), width: weight,
      closed: true, colour: pale)
  }

  // Compass spokes, each tapered by the elliptical nib as it crosses the plate.
  for i in range(24) {
    let a = 15deg * i
    let inner = if calc.rem(i, 2) == 0 { 3.05 } else { 3.38 }
    let outer = if calc.rem(i, 2) == 0 { 3.48 } else { 3.65 }
    let p0 = (cx + inner * calc.cos(a), cy + inner * calc.sin(a))
    let p1 = (cx + outer * calc.cos(a), cy + outer * calc.sin(a))
    etch((p0, p1), width: if calc.rem(i, 2) == 0 { 0.022 } else { 0.011 },
      colour: ink)
  }

  // The creature's broad, impossible silhouette.
  let whale = (
    (3.9, 5.0), (4.25, 5.55), (5.0, 5.98), (6.0, 6.28),
    (7.15, 6.42), (8.1, 6.3), (8.95, 5.98), (9.75, 5.72),
    (10.35, 5.82), (10.0, 5.35), (10.65, 5.04), (10.05, 4.96),
    (10.4, 4.47), (9.8, 4.82), (9.05, 4.56), (8.25, 4.35),
    (7.2, 4.25), (6.2, 4.38), (5.35, 4.58), (4.55, 4.72),
  )
  etch(whale, width: 0.043, closed: true, colour: ink)

  // Engraved gill-lines, a crescent eye, and the bright seam of its back.
  for i in range(5) {
    let x = 4.85 + i * 0.23
    etch(((x, 4.83), (x + 0.25, 5.02), (x + 0.35, 5.34)),
      width: 0.014, colour: pale)
  }
  etch(orbit-points(8.92, 5.48, 0.11, 0.075, tilt: 20deg, count: 49),
    width: 0.015, closed: true)
  draw.circle((8.92, 5.48), radius: 0.025, fill: ink, stroke: none)
  etch(((5.25, 5.86), (6.0, 6.12), (7.15, 6.2), (8.3, 6.02)),
    width: 0.018, colour: pale)

  // A logarithmic shell of ink turns the whale's flank into a tiny galaxy.
  let spiral = range(181).map(i => {
    let a = 7deg * i
    let r = 0.025 * calc.exp(0.018 * i)
    (6.95 + r * calc.cos(a), 5.23 + r * calc.sin(a))
  })
  etch(spiral, width: 0.022, colour: ink)

  // The moon is cross-hatched with nib strokes, not a filled circle.
  etch(orbit-points(cx, cy, 0.78, 0.78, count: 121),
    width: 0.019, closed: true, colour: ink)
  for i in range(-6, 7) {
    let y = cy + i * 0.095
    let half = calc.sqrt(calc.max(0, 0.78 * 0.78 - (y - cy) * (y - cy)))
    if half > 0.08 {
      etch(((cx - half, y), (cx + half, y)), width: 0.012,
        colour: if calc.rem(i, 2) == 0 { pale } else { ink })
    }
  }

  // Star-fixings and their measured constellation.
  let stars = ((1.5, 7.7), (3.0, 8.25), (5.0, 7.9), (7.5, 8.6),
               (10.0, 8.0), (12.0, 8.45), (13.2, 7.1), (11.8, 2.0),
               (9.4, 1.25), (6.2, 1.45), (3.5, 2.0), (1.4, 3.5))
  for i in range(stars.len()) {
    let p = stars.at(i)
    let q = stars.at(calc.rem(i + 1, stars.len()))
    if calc.rem(i, 2) == 0 {
      etch((p, q), width: 0.009, dash: (lengths: (0.08, 0.11)),
        colour: pale)
    }
    draw.circle(p, radius: if calc.rem(i, 3) == 0 { 0.045 } else { 0.026 },
      fill: ink, stroke: none)
    etch(((p.at(0) - 0.09, p.at(1)), (p.at(0) + 0.09, p.at(1))),
      width: 0.009, colour: ink)
    etch(((p.at(0), p.at(1) - 0.09), (p.at(0), p.at(1) + 0.09)),
      width: 0.009, colour: ink)
  }

  antique-label((1.25, 6.3), [Nébuleuse du Nord], paper: paper, ink: ink)
  antique-label((11.15, 6.1), [Œil du cétacé], paper: paper, ink: ink)
  antique-label((7.5, 0.68), [Lune des marées], paper: paper, ink: ink)
  antique-label((7.5, 7.25), [Spirale abyssale], paper: paper, ink: ink)
})

#figure-caption[Fig. 1 — Le cétacé céleste, tracé à la plume elliptique de *nibart* ; les orbites, la gravure du corps et les constellations sont des enveloppes de traits, non des contours simulés.]

#v(4mm)

#antique-notes(
  antique-note([Observation], [Apparition à la neuvième marée, quand la Lune est au méridien.]),
  antique-note([Instrument], [Plume elliptique, inclinaison 24° ; traits d'orbite tirés à l'encre pâle.]),
)

#v(3mm)
#align(center, text(size: 7.5pt, tracking: 1pt, smallcaps[OBSERVATOIRE D'ALGER · 1902]))
