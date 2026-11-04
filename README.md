# typst-nor-letter
A Typst business document/letter template conforming to the NS 4129:1995 standard (Kontordokumenter og blanketter - Utforming). This standard references ISO 6422:1985 (Layout key for trade documents).

## Purpose
The project goal is a template for professional-looking documents with room for a complete set of standard metadata such as dates, archive references, recipients, document type / form and more, while conforming to official standards as far as they exist. NS 4129 war chosen as the reference point, since is the only authoritative Norwegian source for the layout of professional letters etc, even if it's far from perfect from a design perspective.

NS-4129 is very much a product of the early 1990s, and quite strict on correct and uniform placement of all elements. It still creates professional and clean-looking documents, and is particularly suited for documents with complete metadata like sender/recipient reference numbers and dates.

The template is reasonably heavy on code and named fields, to ensure uniform output and allow for integration in more workflows where it may take metadata from other sources such as document management systems.

## Features
* **Flexible standard document:** By data labels and filling relevant metadata fields, the template can be used for letters, meeting minutes, internal memos, handbooks and more, while remaining easily recognizable. 

* **Tidy metadata**: Reference/archive numbers, document type (like "Memo", "Minutes" etc), dates and addresses print cleanly and in the correct place. Please note that "marking" is good for things like "Internal use only", but NS 4129 does _not_ conform to any known standard for confidentiality markings.

* **Multiple recipients (CC) and signatures:** Correctly handles typical situations where there is a main recipient and cc or return address, as well as signature from multiple parties or from a responsible manager as well as the executive officer / handler or similar.

* **Complex sender details:** Contact details like addresses, phone numbers, registry numbers and bank details print cleanly in the footer without cluttering the document.

## Examples
See https://github.com/turbohanstad/typst-nor-letter/tree/main/examples for more examples of use of the template for business to business or personal correspondence in English or Norwegian.

```typ
#import "@preview/nor-letter:0.3.0": letter, indented, signature, colors

#show: letter.with(
  // ── DOCUMENT DATA ───────────────────────────────────────────────────
  subject:        "Very important and profound message",
  doc-type:       none,
    doc-type-code:  none,
    marking:        Draft,

  date:       "2026-10-10",
  our-ref:    "26-1200/23",       revision: none,
  your-date:  2026-10-01,       your-ref:   "2026/1234-1",

  language: "en",  // en,nb,nn or custom in labels.toml

  // ── RECIPIENT ───────────────────────────────────────────────────────
  recipient-lead: "Electronic distribution",
  recipient: [
    Recip Co
    123 Post Street
    Anytown, USA
  ],
  secondary-address: ("Copy:" [J. Chiles \ Attorney at Law]),

  // ── LABEL OVERRIDES ─────────────────────────────────────────────────
  labels: (handler: "Drafted by"),

  // ── SENDER ──────────────────────────────────────────────────────────
  // company: (name: "", department: "", handler: "") OR
  // person: (name: "", address_title: "")
  company: (
    name: "Vandelay Industries",
    department: "Exports department",
    handler: "A. Vandelay"
  ),
  person: none,

  logo: none,     // none or e.g. image("logo.png")

  // ── SENDER'S FULL CONTACT DETAILS (FOOTER) ──────────────────────────
  // ((label, content), (..)) OR [*label* \ content \ *l* \ c],[...]
  footer: (
    ("Postal address", [Street \ Town]),
    ("Phone number",     "+47 123 45 678"),
    ("E-mail",      [#link("mailto:art@vandelay.biz")[art\@vandelay.biz]]),
  ),
  footer-tabs: (0, 2, 4, 6), // edit to fit more columns

  // ── LAYOUT ──────────────────────────────────────────────────────────
  folding-marks: false,  two-sided: false, even-margins: true,
  justify: true,        rules: true,      list-indent: 1,
)

// ── BODY TEXT ───────────────────────────────────────────────────────
// use #indented[content] for indented paragraphs

The body text of our very important and thought-trough message follows here. Some of our thoughts are so profound that we use #text(color: colors.red)[template-defined colors] for emphasis.

#indented[We sometimes use indented paragraphs for even more profound remarks to our well-]

Yours,

#signature()[Art Vandelay \ Architect][Babs K. \ Attendant]
```
## Development
Any comments or contributions are welcome, see https://github.com/turbohanstad/typst-nor-letter . 
