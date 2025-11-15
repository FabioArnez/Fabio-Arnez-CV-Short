
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Fabio Arnez"
#let locale-catalog-page-numbering-style = context { "Fabio Arnez - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Nov 2025"
#let locale-catalog-language = "en"
#let design-page-size = "a4"
#let design-section-titles-font-size = 1.4em
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 0, 0)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 0, 0)
#let design-colors-connections = rgb(0, 0, 0)
#let design-colors-links = rgb(0, 79, 144)
#let design-section-titles-font-family = "New Computer Modern"
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.4em
#let design-section-titles-type = "with-parial-line"
#let design-section-titles-vertical-space-above = 0.5cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = false
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "New Computer Modern"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-family = "New Computer Modern"
#let design-header-name-font-size = 30pt
#let design-header-name-bold = true
#let design-header-connections-font-family = "New Computer Modern"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = ""
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "◦"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0.4cm
#let design-highlights-vertical-space-between-highlights = 0.25cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.5em
#let design-entries-vertical-space-between-entries = 1.2em
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0.2cm
#let design-page-top-margin = 1cm
#let design-page-bottom-margin = 1cm
#let design-page-left-margin = 1cm
#let design-page-right-margin = 1cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = true
#let design-links-underline = true
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-bullet,
  spacing: 0pt,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #it.body
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-parial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= Fabio Arnez

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Orsay, France],
  [#box(original-link("mailto:fabio.arnez@cea.fr")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)fabio.arnez\@cea.fr])],
  [#box(original-link("https://fabioarnez.github.io/")[#fa-icon("link", size: 0.9em) #h(0.05cm)fabioarnez.github.io])],
  [#box(original-link("https://github.com/FabioArnez")[#fa-icon("github", size: 0.9em) #h(0.05cm)FabioArnez])],
  [#box(original-link("https://linkedin.com/in/fabio-arnez")[#fa-icon("linkedin", size: 0.9em) #h(0.05cm)fabio-arnez])],
  [#box(original-link("https://scholar.google.com/citations?user=faWEPTIAAAAJ&hl")[#fa-icon("graduation-cap", size: 0.9em) #h(0.05cm)Google Scholar])],
  [#box(original-link("https://orcid.org/0000-0003-0367-3035")[#fa-icon("orcid", size: 0.9em) #h(0.05cm)0000-0003-0367-3035])],
)
#connections(connections-list)



== Experience


#two-col-entry(
  left-content: [
    #strong[Research Engineer in AI]

#emph[Commissariat à l’énergie atomique et aux énergies alternatives \(CEA\), DRT.LIST.DILS.LSEA]
  ],
  right-content: [
    #emph[Palaiseau, France]

#emph[Oct 2019 – present]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Research on DNNs\/LLMs\/VLMs confidence representation \(uncertainty estimation\) for out-of-distribution\/hallucination detection, runtime monitoring in complex computer vision tasks \(#link("https://fabioarnez.github.io/LaREx-website/")[demo object detection]\), embedded uncertainty estimation, safe and robust end-to-end DNN-based #link("https://fabioarnez.github.io/blog/2025/UQ-BDL-UAV-System/")[UAV navigation], and AI Safety.])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Trustworthy\/Safe deep learning team leader, Ph.D. Theses and interships supervison],[Contributing to the PRIMaL project: Developed and uncertainty-based method for LLM extrinsic & intrinsic hallucination detection, developed OoD object detection methods, collected a dataset for UAV navigation using the PyBullet simulator \(gym-pybullet-drones\)],[Contributing to the #link("https://deepgreen.ai/")[DeepGreen] project for embedded AI, \(France 2030 program\): Developed dropout operator for the #link("https://gitlab.eclipse.org/eclipse/aidge/aidge")[Aidge] library for embedded DNN uncertainty estimation, studied the reliability & robustness of quantized CLIP],[Contributed to the #link("https://www.confiance.ai/")[Confiance.ai] program, \(France 2030 program\): Developed an OoD detection method #link("https://catalog.confiance.ai/records/vtkgc-x6d75")[library]],[Contributed to the #link("https://cordis.europa.eu/article/id/444650-innovative-framework-for-cohesive-independent-and-reliable-drone-operations")[Comp4Drones] project \(H2020 Program European Union\): Led WP4-Task4.4 on UAV Runtime Monitoring, developed a distributed uncertainty runtime monitoring system for DNN-based UAV navigation systems],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Data Scientist]

#emph[Bamboo]
  ],
  right-content: [
    #emph[Cochabamba, Bolivia]

#emph[Apr 2019 – Oct 2019]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Enterprise data analysis & data visualization])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Engineering team leader.],[Implemented PowerBI dashboards to support enterprise decision-making],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Research Assistant]

#emph[University of Applied Arts and Science from Southern Switzerland \(SUPSI\), ISEA, SMT Lab]
  ],
  right-content: [
    #emph[Lugano, Switzerland]

#emph[Sept 2016 – Aug 2018]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Part-time embbeded systems development])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Developed embedded machine learning prototypes for signal classification],[Developed embedded system prototypes for wireless IoT applications \(LoRaWAN, 802.15.4, Bluetooth\)],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Unmanned Aerial Systems Researcher]

#emph[Jalasoft]
  ],
  right-content: [
    #emph[Cochabamba, Bolivia]

#emph[May 2014 – May 2016]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Localization & navigation, ROS integration, embedded systems integration, computer vision tasks])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Built a custom UAV from scratch employing the PX4\/Pixhawk autopilot],[Integrated software and hardware components \(modular system\) using ROS on the built UAV],[Implemented computer vision tasks with an onboard computer in the UAV],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Adjunct Researcher and Lecturer]

#emph[Universidad Privada Boliviana \(UPB\)]
  ],
  right-content: [
    #emph[Cochabamba, Bolivia]

#emph[Sept 2014 – Mar 2019]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Reseearch in embedded wireless IoT applications, Lecturer])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Contributed to the Smart Street Lightning project \(#link("https://www.researchgate.net/publication/334528922_SRESLi_SMART_RENEWABLE_ENERGY_STREET_LIGHTING_SYSTEM")[SRESLi]\)],[Courses Taught: Embedded Electronic Systems \(2016\), Microprocessor Architecture and Technology \(2015, 2016, 2019\), Electronics and Telecom. Project \(2018\), Telecom. Electronics \(2018\), Electronic Instrumentation \(2014, 2015\)],)
  ],
)



== Education


// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Université Paris-Saclay]

#emph[Ph.D. in Computer Science - Artificial Intelligence]
  ],
  right-content: [
    #emph[Palaiseau, France]

#emph[Nov 2019 – Dec 2023]
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [#link("https://theses.hal.science/tel-04672736v1/file/122361_ARNEZ_YAGUALCA_2023_archivage.pdf")[Thesis]: #emph[Deep Neural Network Uncertainty Runtime Monitoring for Robust and Safe AI-based Automated Navigation]])], column-gutter: 0cm)

  #v(design-highlights-top-margin);#highlights([DNN uncertainty-based out-of-distribution detection, uncertainty propagation for robust UAV navigation, confidence monitoring in UAV learning-based components for trustworthy navigation.],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[University of Applied Arts and Science from Southern Switzerland \(SUPSI\)]

#emph[MSc. in Engineering: Embedded Systems & Microelectronics]
  ],
  right-content: [
    #emph[Lugano, Switzerland]

#emph[Sept 2016 – July 2018]
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Thesis Title: #emph[Real-Time Human Footstep Recognition on Smart Anti-Static Floor]])], column-gutter: 0cm)

  #v(design-highlights-top-margin);#highlights([Signal processing and classification using machine learning targeting resource constrained-hardware],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Universidad Privada Boliviana \(UPB\)]

#emph[BSc. in Electronics and Telecommunications Engineering]
  ],
  right-content: [
    #emph[Cochabamba, Bolivia]

#emph[Feb 2008 – May 2014]
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Grade Project Title: #emph[VIRMS: A Vehicle Information and Road Monitoring System], #link("http://www.upb.edu/revista-investigacion-desarrollo/index.php/id/article/view/29")[paper]])], column-gutter: 0cm)

  #v(design-highlights-top-margin);#highlights([Embbeded systems, RTOS, data acquisition & processing, IoT, embedded GUI development],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



== Skills


#one-col-entry(
  content: [#strong[Programming:] Python \(Numpy, Scipy, Matplotlib, Pandas, Seaborn...\), C\/C++; PyQt5 for GUI dev;  Git]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Machine Learning & Deep Learning:] PyTorch, PyTorch-Lightning, Hydra, MLFlow, Slurm HPC, scikit-learn]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Robotics:] ROS\/ROS 2; PyBullet, MuJoCo, CARLA, and AirSim simulators; Gymnasium; PX4\/Pixhawk autopilot]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Embedded Systems:] ST\/SiliconLabs\/NXP ARM Cortex \(M0+, M3, M4\), FreeRTOS]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Languages:] English \(fluent, C1\/C2\), French \(basic-intermediate, B1\), Italian \(basic\), Spanish \(native\)]
)


== Selected Publications


#one-col-entry(
  content: [- Hajji, E., Bouguerra, A., #strong[Arnez, F.] \(2025, November\). #emph[The Map of Misbelief: Tracing Intrinsic and Extrinsic Hallucinations Through Attention Patterns]. In AAAI Fall Symposium Series 2025 - ATRACC.],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- Bouguerra, A., Montoya, D., Gomez-Villa, A., #strong[Arnez, F.], Mraidha, C. \(2025, August\). #emph[Can Less Precise Be More Reliable? A Systematic Evaluation of Quantization’s Impact on CLIP Beyond Accuracy]. \(Under review\) #link("https://arxiv.org/abs/2509.21173")[link]],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- Montoya, D., Bouguerra, A., Gomez-Villa, A., & #strong[Arnez, F]. \(2025, June\). #emph[FindMeIfYouCan: Bringing Open Set Metrics to Near, Far  and Farther Out-of-Distribution Object Detection]. arXiv preprint arXiv:2506.14008. \(Under review\) #link("https://arxiv.org/abs/2506.14008")[link]],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- Rajendran, P. T., #strong[Arnez, F.], Espinoza, H., Delaborde, A., Mraidha, C. #emph[Oracle-Guided Soft Shielding for Safe Move Prediction in Chess.], 2025. \(Accepted at 24th ICMLA - to be presented soon\)],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #strong[Arnez, F.], Vasquez, D. A. M., Radermacher, A., & Terrier, F. \(2024, July\). #emph[Latent Representation Entropy Density for Distribution Shift Detection]. In Conference on Uncertainty in Artificial Intelligence \(UAI\). #link("https://proceedings.mlr.press/v244/arnez24a.html")[link]],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #strong[Arnez, F.] \(2023\). #emph[Deep Neural Network Uncertainty Runtime Monitoring for Robust and Safe AI-based Automated Navigation] \(Doctoral dissertation, Université Paris-Saclay\). #link("https://theses.hal.science/tel-04672736/")[link]],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #strong[Arnez, F.], Ollier, G., Radermacher, A., Adedjouma, M., Gerasimou, S., Mraidha, C., & Terrier, F. \(2022, August\). #emph[Skeptical Dynamic Dependability Management for Automated Systems] In 2022 25th Euromicro Conference on Digital System Design \(DSD\) \(pp. 118-125\). IEEE Computer Society],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #strong[Arnez, F.], Radermacher, A., & Espinoza, H. #emph[Quantifying and Using System Uncertainty in UAV navigation], in Workshop on Releasing Robots into the Wild: Simulations, Benchmarks, and Deployment at ICRA-2022, 2022. #link("https://arxiv.org/abs/2206.01953")[link]],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #strong[Arnez, F.], Espinoza, H., Radermacher, A., & Terrier, F. \(2022, September\). #emph[Towards Dependable Autonomous Systems Based on Bayesian Deep Learning Components] In 2022 18th European Dependable Computing Conference \(EDCC\) \(pp. 65-72\). IEEE. #link("https://arxiv.org/abs/2301.05297")[link]],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #strong[Arnez, F.], Espinoza, H., Radermacher, A., & Terrier, F. #emph[Improving Robustness of Deep Neural Networks for Aerial Navigation by Incorporating Input Uncertainty] Proceedings of the Workshop on Artificial Intelligence Safety Engineering WAISE 2021, International Conference on Computer Safety, Reliability, and Security \(pp. 219-225\). Springer. #link("https://link.springer.com/chapter/10.1007/978-3-030-83906-2_17")[link]],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #strong[Arnez, F.], Espinoza, H., Radermacher, A., & Terrier, F. #emph[A Comparison of Uncertainty Estimation Approaches in Deep Learning Components for Autonomous Vehicle Applications.] Proceedings of the Workshop on Artificial Intelligence Safety 2020, vol 2640, ISSN:1673-0073. #link("http://ceur-ws.org/Vol-2640/paper_24.pdf")[link]],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #strong[Arnez F.], Villazon A. \(2014\). #emph[VIRMS – A Vehicle Information and Road Monitoring System] Investigacion y Desarrollo, Nr. 14, Vol. 2: 94 -107, Universidad Privada Boliviana, ISSN:1814-6333. #link("http://www1.upb.edu/revista-investigacion-desarrollo/index.php/id/article/view/29")[link]],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- Casazola, D., #strong[Arnez, F.], Espinoza, H., #emph[Design Considerations of an Unmanned Aerial Vehicle for Aerial Filming] Techzone 2014, Jalasoft. #link("https://arxiv.org/pdf/2212.11402.pdf")[link]],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- Full list of publications in Google Scholar profile],
)


== Other Scientific Activities


#one-col-entry(
  content: [- #strong[Ph.D. Thesis Supervision:] #emph[Deep Neural Network Uncertainty Estimation on Embedded Targets] \(Aymen Bouguerra, 2024 - Present\); #emph[Out-of-Distribution Detection with Vision Foundation Models and Post-hoc Methods] \(Joaquin Figueira, starting Nov. 2025\)],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #strong[Reviewer in Conferences\/Workshops:] CVPR \(2025\), AAAI \(2026, 2025\), UAI \(2025, 2024\), WACV \(2025\), IV \(2025, 2022\), AI-Safety workshop at IJCAI \(2024\), Releasing Robots in the Wild Workshop at ICRA \(2022\)],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #strong[AI Safety Workshop 2024 Organizing Comitee Member], Workshop on AI Safety and Security at IJCAI 2024],
)


