// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Fabio Arnez",
  title: "Fabio Arnez - CV",
  footer: context { [#emph[Fabio Arnez -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Sept 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "a4",
  page-top-margin: 1cm,
  page-bottom-margin: 1cm,
  page-left-margin: 1cm,
  page-right-margin: 1cm,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "New Computer Modern",
  typography-font-family-name: "New Computer Modern",
  typography-font-family-headline: "New Computer Modern",
  typography-font-family-connections: "New Computer Modern",
  typography-font-family-section-titles: "New Computer Modern",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "•",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "◦" ,
  entries-highlights-nested-bullet:  "◦" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 9,
    day: 21,
  ),
)


= Fabio Arnez

#connections(
  [Orsay, France],
  [#link("mailto:fabio.arnez@cea.fr", icon: false, if-underline: false, if-color: false)[fabio.arnez\@cea.fr]],
  [#link("https://fabioarnez.github.io/", icon: false, if-underline: false, if-color: false)[fabioarnez.github.io]],
  [#link("https://github.com/FabioArnez", icon: false, if-underline: false, if-color: false)[github.com\/FabioArnez]],
  [#link("https://linkedin.com/in/fabio-arnez", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/fabio-arnez]],
  [#link("https://scholar.google.com/citations?user=faWEPTIAAAAJ&hl", icon: false, if-underline: false, if-color: false)[scholar.google.com\/citations?user=faWEPTIAAAAJ&hl]],
  [#link("https://orcid.org/0000-0003-0367-3035", icon: false, if-underline: false, if-color: false)[orcid.org\/0000-0003-0367-3035]],
)


== Experience

#regular-entry(
  [
    #strong[Research Engineer in AI — Trustworthy\/Safe Deep Learning Team Leader]

    #emph[Commissariat à l’énergie atomique et aux énergies alternatives (CEA), DRT.LIST.DILS.LSEA]

  ],
  [
    #emph[Palaiseau, France]

    #emph[Oct 2019 – present]

  ],
  main-column-second-row: [
    #summary[Research on DNNs\/LLMs\/VLMs\/VLAs confidence representation (uncertainty estimation) for out-of-distribution\/hallucination detection, runtime monitoring in complex computer vision tasks (#link("https://fabioarnez.github.io/LaREx-website/")[demo object detection]), quantization and embedded uncertainty estimation, safe and robust end-to-end DNN-based #link("https://fabioarnez.github.io/blog/2025/UQ-BDL-UAV-System/")[UAV navigation], and AI Safety.]

    - Ph.D. theses and internships supervision

    - Developed #link("https://github.com/CEA-LIST/runia_core/")[RunIA-Core], a Python library for DNN confidence representation and runtime monitoring, with support for PyTorch and PyTorch-Lightning, and integration with MLFlow for experiment tracking

    - Contributed to the PRIMaL project: Developed an uncertainty-based method for LLM extrinsic & intrinsic hallucination detection, developed OoD object detection methods, collected a dataset for UAV navigation using the PyBullet simulator (gym-pybullet-drones)

    - Contributing to the #link("https://deepgreen.ai/")[DeepGreen] project for embedded AI, (France 2030 program): Developed dropout operator for the #link("https://gitlab.eclipse.org/eclipse/aidge/aidge")[Aidge] library for embedded DNN uncertainty estimation, studied the reliability & robustness of quantized CLIP

    - Contributed to the #link("https://www.confiance.ai/")[Confiance.ai] program, (France 2030 program): Developed an OoD detection method #link("https://catalog.confiance.ai/records/vtkgc-x6d75")[library]

    - Contributed to the #link("https://cordis.europa.eu/article/id/444650-innovative-framework-for-cohesive-independent-and-reliable-drone-operations")[Comp4Drones] project (H2020 Program European Union): Led WP4-Task4.4 on UAV Runtime Monitoring, developed a distributed uncertainty runtime monitoring system for DNN-based UAV navigation systems

  ],
)

#regular-entry(
  [
    #strong[Data Scientist]

    #emph[Bamboo]

  ],
  [
    #emph[Cochabamba, Bolivia]

    #emph[Apr 2019 – Oct 2019]

  ],
  main-column-second-row: [
    - Engineering team leader; enterprise data analysis & data visualization

    - Implemented PowerBI dashboards to support enterprise decision-making

  ],
)

#regular-entry(
  [
    #strong[Research Assistant]

    #emph[University of Applied Arts and Science from Southern Switzerland (SUPSI), ISEA, SMT Lab]

  ],
  [
    #emph[Lugano, Switzerland]

    #emph[Sept 2016 – Aug 2018]

  ],
  main-column-second-row: [
    #summary[Part-time embedded systems development]

    - Developed embedded machine learning prototypes for signal classification

    - Developed embedded system prototypes for wireless IoT applications (LoRaWAN, 802.15.4, Bluetooth)

  ],
)

#regular-entry(
  [
    #strong[Unmanned Aerial Systems Researcher]

    #emph[Jalasoft]

  ],
  [
    #emph[Cochabamba, Bolivia]

    #emph[May 2014 – May 2016]

  ],
  main-column-second-row: [
    #summary[Localization & navigation, ROS integration, embedded systems integration, computer vision tasks]

    - Built a custom UAV from scratch employing the PX4\/Pixhawk autopilot

    - Integrated software & hardware components (modular system) using ROS, and implemented onboard computer vision tasks

  ],
)

#regular-entry(
  [
    #strong[Adjunct Researcher and Lecturer]

    #emph[Universidad Privada Boliviana (UPB)]

  ],
  [
    #emph[Cochabamba, Bolivia]

    #emph[Sept 2014 – Mar 2019]

  ],
  main-column-second-row: [
    #summary[Research in embedded wireless IoT applications, Lecturer]

    - Contributed to the Smart Street Lightning project (#link("https://www.researchgate.net/publication/334528922_SRESLi_SMART_RENEWABLE_ENERGY_STREET_LIGHTING_SYSTEM")[SRESLi])

    - Courses Taught (2014-2019): Embedded Electronic Systems, Microprocessor Architecture & Technology, Electronics & Telecom. Project, Telecom. Electronics, Electronic Instrumentation

  ],
)

== Education

#education-entry(
  [
    #strong[Université Paris-Saclay]

    #emph[Ph.D.] #emph[in] #emph[Computer Science - Artificial Intelligence]

  ],
  [
    #emph[Palaiseau, France]

    #emph[Nov 2019 – Dec 2023]

  ],
  main-column-second-row: [
    #summary[#link("https://theses.hal.science/tel-04672736v1/file/122361_ARNEZ_YAGUALCA_2023_archivage.pdf")[Thesis]: #emph[Deep Neural Network Uncertainty Runtime Monitoring for Robust and Safe AI-based Automated Navigation]]

    - DNN uncertainty-based out-of-distribution detection, uncertainty propagation for robust UAV navigation, confidence monitoring in UAV learning-based components for trustworthy navigation.

  ],
)

#education-entry(
  [
    #strong[University of Applied Arts and Science from Southern Switzerland (SUPSI)]

    #emph[MSc.] #emph[in] #emph[Engineering: Embedded Systems & Microelectronics]

  ],
  [
    #emph[Lugano, Switzerland]

    #emph[Sept 2016 – July 2018]

  ],
  main-column-second-row: [
    #summary[Thesis Title: #emph[Real-Time Human Footstep Recognition on Smart Anti-Static Floor]]

    - Signal processing and classification using machine learning targeting resource constrained-hardware

  ],
)

#education-entry(
  [
    #strong[Universidad Privada Boliviana (UPB)]

    #emph[BSc.] #emph[in] #emph[Electronics and Telecommunications Engineering]

  ],
  [
    #emph[Cochabamba, Bolivia]

    #emph[Feb 2008 – May 2014]

  ],
  main-column-second-row: [
    #summary[Grade Project Title: #emph[VIRMS: A Vehicle Information and Road Monitoring System], #link("http://www.upb.edu/revista-investigacion-desarrollo/index.php/id/article/view/29")[paper]]

    - Embedded systems, RTOS, data acquisition & processing, IoT, embedded GUI development

  ],
)

== Skills

#strong[Programming:] Python (Numpy, Scipy, Matplotlib, Pandas, Seaborn...), C\/C++; PyQt5 for GUI dev;  Git

#strong[Machine Learning & Deep Learning:] PyTorch, PyTorch-Lightning, Hugging Face, Hydra, MLFlow, Slurm HPC

#strong[Robotics:] ROS\/ROS 2; PyBullet, MuJoCo, CARLA, and AirSim simulators; Gymnasium; PX4\/Pixhawk autopilot

#strong[Embedded Systems:] ST\/SiliconLabs\/NXP ARM Cortex (M0+, M3, M4), FreeRTOS; Aidge

#strong[Languages:] English (fluent, C1\/C2), French (basic-intermediate, B1), Italian (basic), Spanish (native)

== Selected Publications

- #strong[Arnez, F.], & Gomez-Villa, A. (2026, July). #emph[The SIGReg Objective as Variational Free Energy: A Theoretical Active-Inference Account of JEPA World Models]. arXiv preprint arXiv:2607.13612. #link("https://arxiv.org/abs/2607.13612")[link]

- Bouguerra, A., Montoya, D., Gomez-Villa, A., Mraidha, C., #strong[Arnez, F.] (2026, July). #emph[Less Precise Can Be More Reliable: A Systematic Evaluation of Quantization’s Impact on VLMs Beyond Accuracy]. In #strong[International Conference on Machine Learning (ICML)]. #link("https://openreview.net/pdf?id=Wvd80GPJ9F")[link]

- Rajendran, P. T., #strong[Arnez, F.], Espinoza, H., Delaborde, A., & Mraidha, C. (2026, June). #emph[FedSALAT: Adaptive Buffer-Based Active Learning for Federated Data Streams]. In 2026 2nd International Conference on Federated Learning and Intelligent Computing Systems (FLICS). IEEE.

- Suri, K., & #strong[Arnez, F.] (2026, June). #emph[Digital Twins and World Models: A Systematic Taxonomic Disambiguation]. In International Conference on Advanced Information Systems Engineering (CAiSE). #link("https://cea.hal.science/cea-05547494/document")[link]

- Hajji, E., Bouguerra, A., #strong[Arnez, F.] (2025, November). #emph[The Map of Misbelief: Tracing Intrinsic and Extrinsic Hallucinations Through Attention Patterns]. In Proceedings of the AAAI Symposium Series (AAAI Fall Symposium - ATRACC), 7(1). #link("https://arxiv.org/abs/2511.10837")[link]

- Rajendran, P. T., #strong[Arnez, F.], Espinoza, H., Delaborde, A., & Mraidha, C. (2025, December). #emph[Oracle-Guided Soft Shielding for Safe Move Prediction in Chess]. In 2025 International Conference on Machine Learning and Applications (ICMLA) (pp. 875-880). IEEE.

- Montoya, D., Bouguerra, A., Gomez-Villa, A., & #strong[Arnez, F]. (2025, June). #emph[FindMeIfYouCan: Bringing Open Set Metrics to Near, Far and Farther Out-of-Distribution Object Detection]. arXiv preprint arXiv:2506.14008. (Under review) #link("https://arxiv.org/abs/2506.14008")[link]

- #strong[Arnez, F.], Vasquez, D. A. M., Radermacher, A., & Terrier, F. (2024, July). #emph[Latent Representation Entropy Density for Distribution Shift Detection]. In #strong[Conference on Uncertainty in Artificial Intelligence (UAI)]. #link("https://proceedings.mlr.press/v244/arnez24a.html")[link]

- #strong[Arnez, F.], Radermacher, A., & Espinoza, H. #emph[Quantifying and Using System Uncertainty in UAV navigation], in Workshop on Releasing Robots into the Wild: Simulations, Benchmarks, and Deployment at ICRA-2022, 2022. #link("https://arxiv.org/abs/2206.01953")[link]

- #strong[Arnez, F.], Espinoza, H., Radermacher, A., & Terrier, F. (2022, September). #emph[Towards Dependable Autonomous Systems Based on Bayesian Deep Learning Components] In 2022 18th European Dependable Computing Conference (EDCC) (pp. 65-72). IEEE. #link("https://arxiv.org/abs/2301.05297")[link]

- #strong[Arnez, F.], Espinoza, H., Radermacher, A., & Terrier, F. #emph[Improving Robustness of Deep Neural Networks for Aerial Navigation by Incorporating Input Uncertainty] Proceedings of the Workshop on Artificial Intelligence Safety Engineering WAISE 2021, International Conference on Computer Safety, Reliability, and Security (pp. 219-225). Springer. #link("https://link.springer.com/chapter/10.1007/978-3-030-83906-2_17")[link]

- #strong[Arnez, F.], Espinoza, H., Radermacher, A., & Terrier, F. #emph[A Comparison of Uncertainty Estimation Approaches in Deep Learning Components for Autonomous Vehicle Applications.] Proceedings of the Workshop on Artificial Intelligence Safety 2020, vol 2640, ISSN:1673-0073. #link("http://ceur-ws.org/Vol-2640/paper_24.pdf")[link]

- Full list of publications in #link("https://scholar.google.com/citations?hl=en&user=faWEPTIAAAAJ&view_op=list_works&sortby=pubdate")[Google Scholar profile]

== Other Scientific Activities

- #strong[Ph.D. Thesis Supervision:] #emph[Deep Neural Network Uncertainty Estimation on Embedded Targets] (Aymen Bouguerra, 2024 - Present); #emph[Out-of-Distribution Detection with Vision Foundation Models and Post-hoc Methods] (starting Oct. 2026)

- #strong[Reviewer in Conferences\/Workshops:] NeurIPS (2026), ICML (2026 -- Gold Reviewer), BMVC (2026), CVPR (2025), AAAI (2026, 2025), UAI (2026, 2025, 2024), WACV (2025), IV (2025, 2022), AI-Safety workshop at IJCAI (2024), Releasing Robots in the Wild Workshop at ICRA (2022)

- #strong[Workshop & Conference Organizing Committee Member:] Workshop on AI Safety and Security at IJCAI 2024, ICVES 2026 (ongoing)
