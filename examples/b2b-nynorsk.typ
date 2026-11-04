#import "@local/nor-letter:0.3.0": letter, indented, signature, colors

#show: letter.with(
  // ── DOCUMENT DATA ───────────────────────────────────────────────────
  subject:        "Kontordokument i tråd med NS4129",
  doc-type:       none,
    doc-type-code:  none,
    marking:        none,

  date:       "2026-10-10",
  our-ref:    "26-1602",       revision: none,
  your-date:  "2026-10-01",       your-ref:   "21/1555/12",

  language: "nb",  // en,nb,nn or custom in labels.toml

  // ── RECIPIENT ───────────────────────────────────────────────────────
  recipient-lead: none,
  recipient: [
    Varnsen Inc. \
    Pb. 123 \
    5678 BERGEN
  ],
  secondary-address: ("Kopi til:", "Jackie Chiles, \ Attorney at Law"),

  // ── LABEL OVERRIDES ─────────────────────────────────────────────────
  labels: (:),

  // ── SENDER ──────────────────────────────────────────────────────────
  // company: (name: "", department: "", handler: "") OR
  // person: (name: "", address_title: "")
  company: (
    name: "Vandelay Industries",
    department: "Avdeling for import/eksport",
    handler: "Bob Sacamano, bob@vandelay.biz"
  ),
  person: none,

  logo: image("logo.svg"),

  // ── SENDER'S FULL CONTACT DETAILS (FOOTER) ──────────────────────────
  // ((label, content), (..)) OR [*label* \ content \ *l* \ c],[...]
  footer: (
    [*Postadresse* \ Inkognitogava 99 \ 0123 Oslo \ NORWAY],
    [*Varemottak* \ Skur 19 \ Akerhusstranda \ Oslo],
    [*E-post* \ #link("mailto:noreply@vandelay.biz")[art\@vandelay.biz] \
    #link("mailto:bob@vandelay.biz")[bob\@vandelay.biz] \
    *X.400* \ G=Bob;S=Sacamano; \ O=Vandelay;A=ATT;C=US],
    [*Telefon* \ +47 987 65 432 \ *Fax* \ +47 12 34 56 78],
    [*Org.nummer* \ 987 654 325 \ *Innbetalinger* \ NO02 1234 5678 910],
  ),
  footer-tabs: (0, 1.6, 3.2, 4.8, 6.4), // edit to fit more columns

  // ── LAYOUT ──────────────────────────────────────────────────────────
  folding-marks: true,  two-sided: false, even-margins: true,
  justify: true,        rules: true,      list-indent: 1,
)

// ── BODY TEXT ───────────────────────────────────────────────────────
// use #indented[content] for indented paragraphs

#lorem(75)

- Lorem ipsum dolor sit amet, consectetur adipiscing elit
- Ut enim aeque doleamus animo, cum corpore dolemus
- Quod idem licet transferre in voluptatem

#lorem(40)

#lorem(55)

Med helsing

#signature()[Art Vandelay \ Sjefsarkitekt][Bob Sacamano \ Bekjent]
