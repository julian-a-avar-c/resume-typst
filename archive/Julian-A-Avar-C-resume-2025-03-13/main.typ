#import "../util/resume-utils.typ": *
#import "@preview/metalogo:1.2.0": *

// Put your personal information here, replacing mine
#let name = "Julián A Avar C"
#let location = "NJ & NY"
#let email = "julian-a-avar-c@proton.me"
#let github = "github.com/julian-a-avar-c"
#let linkedin = "linkedin.com/in/julian-a-avar-c"
#let phone = "+1 (862) 465-3538"
// #let personal-site = "stuxf.dev"

#show: resume.with(
  author: name,
  // date: datetime(),// "2025-03-05",
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  phone: phone,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  // personal-site: personal-site,
  accent-color: "#26428b",
  // font: "New Computer Modern",
  // font: "EB Garamond 12",
  font: "Gentium Book Plus",
  // font: "Atkinson Hyperlegible",
  // headings-are-upper: true,
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/

== Work Experience

// #work(
//   title: "Crew Member",
//   location: "Berkeley Hei ghts, NJ",
//   company: "Dunkin Donuts",
//   dates: dates-helper(start-date: "Mar 2023", end-date: "Oct 2023"),
//   items: (
//     [Delivered _customer service excellence_ through accurate _cash handling_ and _POS system operation_],
//     [Collaborated with team members to resolve conflicts and ensure _timely order fulfillment_],
//     [Maintained _cleanliness standards_ and organized workplace for efficient order handling],
//   )
// )

// #work(
//   title: "Kitchen Staff",
//   location: "Champaign, IL",
//   company: "Panda Express",
//   dates: dates-helper(start-date: "Oct 2021", end-date: "Dec 2021"),
//   items: (
//     [Prepared food adhering to _safety compliance guidelines_ while managing _inventory rotation_],
//     [Maintained _effective service_ during peak hours through _time management_ and _task prioritization_ across two Illinois locations],
//     [Coordinated and ensured _workplace cleanliness_ and performed daily _equipment maintenance_ to meet hygiene standards],
//   )
// )

// #line(length: 100%, stroke: 0.25pt)

#work(
  title: "Technology Instructor",
  location: "Queens, NY",
  company: "Unidad y Fe, Iglesia Evangélica Luterana",
  dates: dates-helper(start-date: "Jan 2025", end-date: "Present"),
  items: (
    [Instructing basic tech skills to individuals with limited experience, focusing on mobile, computer, and cloud use],
  )
)

// #work(
//   title: "Programming Instructor",
//   location: "Berkeley Heights, NJ",
//   company: "The Coder School",
//   dates: dates-helper(start-date: "Nov 2024", end-date: "Feb 2025"),
//   items: (
//     [Instructing _Godot_, _Python_, _React_, _C_, _C++_, and _Arduino_ to students ages 11--18],
//   )
// )

#work(
  title: "Computer Science Tutor",
  location: "NJ & NY",
  dates: dates-helper(start-date: "May 2024", end-date: "Present"),
  items: (
    [Educating on _Computer Science_ topics such as _Algorithms_, _Data Structures_, and _Programming Paradigms_],
    [Tutoring students on _Software Engineering_ with _Frontend_, _Backend_, and applicable _Programming Languages_],
    [Nurturing various tooling-related skills such as _Linux_, _Git_, _Bash_, and other miscellaneous tools and processes],
  )
)

#work(
  title: "Fullstack Developer & IT",
  location: "Warren, NJ",
  company: "Processing & Automation Consultancy Solutions",
  dates: dates-helper(start-date: "Jun 2023", end-date: "Present"),
  items: (
    [Transitioned main promotional website from _WordPress_ to _Astro_, _React_, and _Tailwind_, reducing page load by average 5 seconds],
    [Built and maintained business infrastructure hosted on _AWS_ (_Pulumi_ + _NixOS_)],
    [Migrated email service from _cPanel_ to _Microsoft 365 Exchange_, for business ease of use],
  )
)

// #work(
//   title: "Frontend Developer & IT",
//   location: "Warren, NJ",
//   company: "Processing & Automation Consultancy Solutions",
//   dates: dates-helper(start-date: "Jun 2023", end-date: "Dec 2023"),
//   items: (
//     [Transitioned main promotional website from _WordPress_ to _Astro_, _React_, and _Tailwind_],
//     [Built and maintained business infrastructure hosted on _AWS_ (_Pulumi_ + _NixOS_) with an auto-scaling solution],
//   )
// )

// #work(
//   title: "Crew Member",
//   location: "Berkeley Hei ghts, NJ",
//   company: "Dunkin Donuts",
//   dates: dates-helper(start-date: "Mar 2023", end-date: "Oct 2023"),
//   items: (
//     [Delivered _customer service excellence_ through accurate _cash handling_ and _POS system operation_],
//     [Collaborated with team members to resolve conflicts and ensure _timely order fulfillment_],
//     [Maintained _cleanliness standards_ and organized workplace for efficient order handling],
//   )
// )

#work(
  title: "Research Assistant",
  location: "Champaign, IL",
  company: "University of Illinois at Urbana-Champaign (UIUC)",
  dates: dates-helper(start-date: "Jan 2023", end-date: "Jun 2023"),
  community-involvement: ("American Association for Aerosol Research Member", "Philosophy Club Member",),
  items: (
    [Translated cluster legacy system and codebase (atmospheric simulator) from _Fortran 90_ to _Julia_],
  )
)

#work(
  title: "Systems Software Engineer",
  location: "Champaign, IL",
  company: "Frasca International",
  dates: dates-helper(start-date: "Apr 2022", end-date: "Dec 2022"),
  items: (
    [Integrated aircraft simulation systems for various planes and helicopters using _MSVC C++_ and _C\#_],
    [Manually implemented, decoded, and reverse-engineered various avionics networking protocols],
    [Created tools for internal development and manufacturing usage using _WPF_],
    [Introduced unit testing to internal tools with _NUnit_],
  )
)

#work(
  title: "Backend & Unity Developer",
  location: "Moline, IL",
  company: "John Deere",
  dates: dates-helper(start-date: "Jan 2022", end-date: "Mar 2022"),
  items: (
    [Refactored in-house CRM system by introducing _TypeScript_ into _Node.js_ codebase],
    [Developed prototypes for simulation of hydraulic components for instructor use (_Unity_ & _Godot_)],
    [Built _Unity_ templates and library foundations for future projects],
  )
)

// #work(
//   title: "Kitchen Staff",
//   location: "Champaign, IL",
//   company: "Panda Express",
//   dates: dates-helper(start-date: "Oct 2021", end-date: "Dec 2021"),
//   items: (
//     [Prepared food adhering to _safety compliance guidelines_ while managing _inventory rotation_],
//     [Maintained _effective service_ during peak hours through _time management_ and _task prioritization_ across two Illinois locations],
//     [Coordinated and ensured _workplace cleanliness_ and performed daily _equipment maintenance_ to meet hygiene standards],
//   )
// )

#work(
  title: "Programming Tutor",
  location: "Campbell, CA",
  company: "ID Tech",
  dates: dates-helper(start-date: "May 2021", end-date: "Dec 2022"),
  items: (
    [Taught _HTML_/_CSS_/_JavaScript_/_TypeScript_, _Python_, _Java_, and _C\#_ to over 100 students ages 11--18],
  )
)

== Education

#edu(
  institution: "Illinois Institute of Technology",
  location: "Chicago, IL",
  dates: dates-helper(start-date: "Jan 2025", end-date: "Jan 2027"),
  degree: "B.S. Computer Science",
)

#edu(
  institution: "Full Sail University",
  location: "Winter Park, FL",
  dates: dates-helper(start-date: "Nov 2020", end-date: "Nov 2023"),
  degree: "A.S. Computer Science",
  community-involvement: ("Coding Club Vice President",),
)

== Projects

#project(
  name: "Over-Engineered Resume",
  items: (
    [Modern interactive resume using _React_, _Next_, _TypeScript_, and _Tailwind_. Integrated _NeonDB_ and _Hasura_ for _GraphQL_ use, and implemented #emph[REST]ful paths for saving resume configurations.],
  )
)

== Skills

#skills-table(
  skills-by-categories: (
    (
      category: "Basics",
      skills: ("JavaScript", "TypeScript", "C#", "Java", "Python", "Scala", "Ruby", "C++", "Julia", "PHP", "Bash", "Regex", "Git", "REST", "Jira",)
    ),
    (
      category: "Front",
      skills: ("Astro", "Next", "Solid", "Gulp", "Rollup", "Parcel", "Vite", "Tailwind", "Material UI", "Radix UI", "Emotion", "Stylable",)
    ),
    (
      category: "Back",
      skills: ("Express", "SocketIO", "Nest", "EffectTS", "Django", "Spring", "ZIO", "Play!", "Protobuf", "Smithy4s", "Postman", "Swagger",)
    ),
    (
      category: "App",
      skills: ("JavaFX", "WPF", "Android", "React Native", "Expo", "Electron", "ScalaFX",)
    ),
    (
      category: "DB",
      skills: ("SQL", "MySQL", "PostgreSQL", "CockroachDB", "NeonDB", "NoSQL", "MongoDB", "Neo4j",)
    ),
    (
      category: "Infra",
      skills: ("Jenkins", "Docker", "Kubernetes", "Nix", "Terraform", "Pulumi", "Besom", "AWS", "Azure", "CircleCI")
    ),
    (
      category: "Misc",
      skills: ("MSVC", "GCC", "CMake", "Ninja", "SCons", "Boost", "C++ STL", "DTD", "XSD", "CVS", "SVN", "Pijul", "DSLs", "ZSH", "Fish", "Maven", "Gradle", "NPM", "Yarn", "PNPM", "GraphQL", "Hasura", "Linux", "Ubuntu", "OpenSUSE", "NixOS", "Vim", "Matrix", "Godot", "Unity", "Phaser", "Raylib",)
    ),
  )
)

// - *Customer Service:* _Customer Interaction_, _Cash Handling_, _POS Systems_, _Conflict Resolution_, _Complaint Management_, _Order Accuracy_, _Customer Satisfaction_
// - *Operations:* _Food Preparation_, _Safety Compliance_, _Inventory Management_
// - *Teamwork:* _Mentorship & Peer Training_, _Conflict Mediation_, _Positive Attitude Under Pressure_, _Workflow Coordination_
// - *Organization:* _Time Management_, _Task Prioritization_, _Process Documentation_, _Multi-Store Workflow Adaptation_, _Workplace Organization_, _Workplace Cleanliness_, _Equipment Maintenance_
