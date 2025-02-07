#import "@preview/scienceicons:0.0.6": orcid-icon

#let resume(
  author: "",
  date: "",
  author-position: left,
  personal-info-position: left,
  pronouns: "",
  location: "",
  email: "",
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  orcid: "",
  accent-color: "#000000",
  font: "New Computer Modern",
  paper: "us-letter",
  font-size: 12pt,
  body,
) = {

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    // LaTeX style font
    font: font,
    size: font-size,
    lang: "en",
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false
  )

  // Reccomended to have 0.5in margin on all sides
  set page(
    margin: (0.5in),
    paper: paper,
    footer: align(right)[#date]
  )

  // Link styles
  show link: underline

  // Small caps for section titles
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 0.2pt)
    #v(4pt)
  ]

  // Accent Color Styling
  show heading: set text(
    fill: rgb(accent-color),
  )

  show link: set text(
    fill: rgb(accent-color),
  )

  // Name will be aligned left, bold and big
  show heading.where(level: 1): it => [
    #set align(author-position)
    #set text(
      weight: 700,
      size: 20pt,
    )
    #pad(it.body)
  ]

  // Level 1 Heading
  [= #smallcaps(author)]

  // Personal Info Helper
  let contact-item(value, prefix: "", link-type: "") = {
    if value != "" {
      if link-type != "" {
        link(link-type + value)[#(prefix + value)]
      } else {
        value
      }
    }
  }

  // Personal Info
  pad(
    top: 0.25em,
    align(personal-info-position)[
      #{
        let items = (
          contact-item(pronouns),
          contact-item(phone),
          contact-item(location),
          contact-item(email, link-type: "mailto:"),
          contact-item(github, link-type: "https://"),
          contact-item(linkedin, link-type: "https://"),
          contact-item(personal-site, link-type: "https://"),
          contact-item(orcid, prefix: [#orcid-icon(color: rgb("#AECD54"))orcid.org/], link-type: "https://orcid.org/"),
        )
        items.filter(x => x != none).join("  |  ")
      }
    ],
  )

  // Main body.
  set par(justify: true)
  set list(marker: [--], indent: 5pt)

  body
}

// Generic two by two component for resume
#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  [
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}

// Generic one by two component for resume
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  [
    #left #h(1fr) #right
  ]
}

// Generic one by two component for resume
#let generic-one-by-four(
  leftmost: "",
  left-sep: " ",
  left: "",
  right: "",
  right-sep: " ",
  rightmost: "",
) = {
  [
    #leftmost#left-sep#left#h(1fr)#right#right-sep#rightmost
  ]
}

// Cannot just use normal --- ligature becuase ligatures are disabled for good reasons
#let dates-helper(
  start-date: "",
  end-date: "",
) = {
  let o1 = start-date + " " + $dash.em$ + " " + end-date
  let o2 = start-date + $dash.en$ + end-date
  let o3 = start-date + sym.dash.en + end-date
  o1
}

// Section components below
#let edu(
  institution: "",
  dates: "",
  degree: "",
  location: "",
  gpa: (),
  community-involvement: (),
  items: (),
) = {
  (
    generic-one-by-four(
      leftmost: strong(degree),
      left-sep: "  " + sym.dot + "  ",
      left: institution,
      right: emph(location),
      right-sep: if location.len() != 0 {"  " + sym.dot + "  "},
      rightmost: dates,
    ),
    ..if gpa.len() != 0 {
      ([#h(5pt)*GPA:* #gpa.map(emph).join(", ")],)
    },
    ..if community-involvement.len() != 0 {
      ([#h(5pt)*Community Involvement:* #community-involvement.map(emph).join(", ")],)
    },
    ..if items.len() != 0 {
      (list(..items),)
    },
  ).join([\ ])
}

#let work(
  title: "",
  dates: "",
  company: "",
  location: "",
  items: (),
  community-involvement: (),
) = {
  (
    generic-one-by-four(
      leftmost: strong(title),
      left-sep: if company != "" {"  " + sym.dot + "  "},
      left: company,
      right: emph(location),
      right-sep: if location != "" {"  " + sym.dot + "  "},
      rightmost: dates,
    ),
    ..if community-involvement.len() != 0 {
      ([#h(5pt)*Community Involvement:* #community-involvement.map(emph).join(", ")],)
    },
    ..if items.len() != 0 {
      (list(..items),)
    },
  ).join([\ ])
}

#let project(
  role: "",
  name: "",
  url: "",
  dates: "",
  items: (),
  community-involvement: "",
) = {
  (
    generic-one-by-two(
      left: {
        if role == "" {
          [*#name* #if url != "" and dates != "" [ (#link("https://" + url)[#url])]]
        } else {
          [*#role*, #name #if url != "" and dates != ""  [ (#link("https://" + url)[#url])]]
        }
      },
      right: {
        if dates == "" and url != "" {
          link("https://" + url)[#url]
        } else {
          dates
        }
      },
    ),
    ..if community-involvement.len() != 0 {
      ([#h(5pt)*Community Involvement:* #community-involvement.map(emph).join(", ")],)
    },
    ..if items.len() != 0 {
      (list(..items),)
    },
  ).join([\ ])
}

#let certificates(
  name: "",
  issuer: "",
  url: "",
  date: "",
) = {
  [
    *#name*, #issuer
    #if url != "" {
      [ (#link("https://" + url)[#url])]
    }
    #h(1fr) #date
  ]
}

#let extracurriculars(
  activity: "",
  dates: "",
) = {
  generic-one-by-two(
    left: strong(activity),
    right: dates,
  )
}

#let skills-table(
  skills-by-categories: (),
) = {
  grid(
    columns: (auto, 6pt, 1fr),
    ..skills-by-categories.map(skills-by-category => (
      strong(skills-by-category.category),
      "",
      skills-by-category.skills.map(emph).join(", ")
    )).intersperse(("", "", "")).flatten()
  )
}
