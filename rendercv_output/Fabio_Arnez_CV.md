# <<cv.name>>'s CV

((* if cv.phone *))
- Phone: <<cv.phone|replace("tel:", "")|replace("-"," ")>>
((* endif *))
((* if cv.email *))
- Email: [<<cv.email>>](mailto:<<cv.email>>)
((* endif *))
((* if cv.location *))
- Location: <<cv.location>>
((* endif *))
((* if cv.website *))
- Website: [<<cv.website|replace("https://","")|replace("/","")>>](<<cv.website>>)
((* endif *))
((* if cv.social_networks *))
    ((* for network in cv.social_networks *))
- <<network.network>>: [<<network.username>>](<<network.url>>)
    ((* endfor *))
((* endif *))

# <<section_title>>
## **Research Engineer in AI — Trustworthy/Safe Deep Learning Team Leader**

*Palaiseau, France*

*Oct 2019 – present*

*CEA-List, Université Paris-Saclay, Laboratory of Embedded and Autonomous Systems (LSEA)*

Research on DNNs/LLMs/VLMs/VLAs confidence representation (uncertainty estimation) for out-of-distribution/hallucination detection, runtime monitoring in complex computer vision tasks ([demo object detection](https://fabioarnez.github.io/LaREx-website/)), quantization and embedded uncertainty estimation, safe and robust end-to-end DNN-based [UAV navigation](https://fabioarnez.github.io/blog/2025/UQ-BDL-UAV-System/), world models, and AI Safety.

- Ph.D. theses and internships supervision

- Developed [RunIA-Core](https://github.com/CEA-LIST/runia_core/), a Python library for DNN confidence representation and runtime monitoring, with support for PyTorch and PyTorch-Lightning, and integration with MLFlow for experiment tracking

- Contributed to the PRIMaL ([Carnot](https://www.lereseaudescarnot.fr/fr)) project: Developed an uncertainty-based method for LLM extrinsic & intrinsic hallucination detection, developed OoD object detection methods, collected a dataset for UAV navigation using the PyBullet simulator (gym-pybullet-drones)

- Contributing to the [DeepGreen](https://deepgreen.ai/) project for embedded AI (France 2030 program): Developed dropout operator for the [Aidge](https://gitlab.eclipse.org/eclipse/aidge/aidge) library for embedded DNN uncertainty estimation, studied the reliability & robustness of quantized CLIP

- Contributed to the [Confiance.ai](https://www.confiance.ai/) program (France 2030 program): Developed an OoD detection method library

- Contributed to the [Comp4Drones](https://cordis.europa.eu/article/id/444650-innovative-framework-for-cohesive-independent-and-reliable-drone-operations) project (H2020 Program European Union): Led WP4-Task4.4 on UAV Runtime Monitoring, developed a distributed uncertainty runtime monitoring system for DNN-based UAV navigation systems



## **Data Scientist**

*Cochabamba, Bolivia*

*Apr 2019 – Oct 2019*

*Bamboo*

- Engineering team leader; enterprise data analysis & data visualization

- Implemented PowerBI dashboards to support enterprise decision-making



## **Research Assistant**

*Lugano, Switzerland*

*Sept 2016 – Aug 2018*

*University of Applied Sciences and Arts of Southern Switzerland (SUPSI), ISEA, SMT Lab*

Part-time embedded systems development

- Developed embedded machine learning prototypes for signal classification

- Developed embedded system prototypes for wireless IoT applications (LoRaWAN, 802.15.4, Bluetooth)



## **Unmanned Aerial Systems Researcher**

*Cochabamba, Bolivia*

*May 2014 – May 2016*

*Jalasoft*

Localization & navigation, ROS integration, embedded systems integration, computer vision tasks

- Built a custom UAV from scratch employing the PX4/Pixhawk autopilot

- Integrated software & hardware components using ROS, and implemented onboard computer vision tasks



## **Part-time Researcher and Adjunct Lecturer**

*Cochabamba, Bolivia*

*Sept 2014 – Mar 2019*

*Universidad Privada Boliviana (UPB)*

Research in embedded wireless IoT applications, Lecturer

- Contributed to the Smart Street Lighting project ([SRESLi](https://www.researchgate.net/publication/334528922_SRESLi_SMART_RENEWABLE_ENERGY_STREET_LIGHTING_SYSTEM))

- Courses Taught (2014-2019): Embedded Electronic Systems, Microprocessor Architecture & Technology, Electronics & Telecom. Project, Telecom. Electronics, Electronic Instrumentation



# <<section_title>>
## **Université Paris-Saclay**
*Palaiseau, France*


*Nov 2019 – Dec 2023*

*Ph.D.* *in* *Computer Science - Artificial Intelligence*

[Thesis](https://theses.hal.science/tel-04672736v1/file/122361_ARNEZ_YAGUALCA_2023_archivage.pdf): *Deep Neural Network Uncertainty Runtime Monitoring for Robust and Safe AI-based Automated Navigation*

- DNN uncertainty-based out-of-distribution detection, uncertainty propagation for robust UAV navigation, confidence monitoring in UAV learning-based components for trustworthy navigation.



## **University of Applied Sciences and Arts of Southern Switzerland (SUPSI)**
*Lugano, Switzerland*


*Sept 2016 – July 2018*

*MSc.* *in* *Engineering: Embedded Systems & Microelectronics*

Thesis Title: *Real-Time Human Footstep Recognition on Smart Anti-Static Floor*



## **Universidad Privada Boliviana (UPB)**
*Cochabamba, Bolivia*


*Feb 2008 – May 2014*

*BSc.* *in* *Electronics and Telecommunications Engineering*

Grade Project Title: *VIRMS: A Vehicle Information and Road Monitoring System*, [paper](https://www1.upb.edu/revista-investigacion-desarrollo/index.php/id/article/view/29)



# <<section_title>>
**Programming:** Python (Numpy, Scipy, Matplotlib, Pandas, Seaborn...), C/C++; PyQt5 for GUI dev;  Git

**Machine Learning & Deep Learning:** PyTorch, PyTorch-Lightning, Hugging Face, Hydra, MLFlow, Slurm HPC

**Robotics:** ROS/ROS 2; PyBullet, MuJoCo, CARLA, and AirSim simulators; Gymnasium; PX4/Pixhawk autopilot

**Embedded Systems:** ST/SiliconLabs/NXP ARM Cortex (M0+, M3, M4), FreeRTOS; Aidge

**Languages:** English (fluent, C1/C2), French (basic-intermediate, B1), Italian (basic), Spanish (native)

# <<section_title>>
- Bouguerra, A., Gomez-Villa, A., Mraidha, C., **Arnez, F.** (2026, December). *Disentangling the Good From the Bad: Quantization-Induced Flips Are Not Random*. To appear in **Conference on Neural Information Processing Systems (NeurIPS)**.

- Bouguerra, A., Radermacher, A., Mraidha, C., **Arnez, F.** (2026, November). *Quantization and Corruption Robustness in Deployed Road-Scene Perception*. To appear in IEEE International Conference on Vehicular Electronics and Safety (ICVES).

- Montoya, D., Espinoza Mayzer, M. S., **Arnez, F.** (2026, November). *Drive-SynOOD-OD: A Diffusion-Inpainted Synthetic Out-of-Distribution Object Detection Benchmark for Autonomous Driving*. To appear in IEEE International Conference on Vehicular Electronics and Safety (ICVES). [dataset](https://huggingface.co/datasets/farnez/drive-synood-od-data)

- **Arnez, F.**, & Gomez-Villa, A. (2026, July). *The SIGReg Objective as Variational Free Energy: A Theoretical Active-Inference Account of JEPA World Models*. arXiv preprint arXiv:2607.13612. [link](https://arxiv.org/abs/2607.13612)

- Bouguerra, A., Montoya, D., Gomez-Villa, A., Mraidha, C., **Arnez, F.** (2026, July). *Less Precise Can Be More Reliable: A Systematic Evaluation of Quantization’s Impact on VLMs Beyond Accuracy*. In **International Conference on Machine Learning (ICML)**. [link](https://openreview.net/pdf?id=Wvd80GPJ9F)

- Suri, K., & **Arnez, F.** (2026, June). *Digital Twins and World Models: A Systematic Taxonomic Disambiguation*. In Advanced Information Systems Engineering Workshops (CAiSE 2026, MIDas4CS), LNBIP vol. 586 (pp. 61-66). [link](https://cea.hal.science/cea-05547494/document)

- Hajji, E., Bouguerra, A., **Arnez, F.** (2025, November). *The Map of Misbelief: Tracing Intrinsic and Extrinsic Hallucinations Through Attention Patterns*. In Proceedings of the AAAI Symposium Series (AAAI Fall Symposium - ATRACC), 7(1). [link](https://arxiv.org/abs/2511.10837)

- Montoya, D., Bouguerra, A., Gomez-Villa, A., & **Arnez, F**. (2025, June). *FindMeIfYouCan: Bringing Open Set Metrics to Near, Far and Farther Out-of-Distribution Object Detection*. arXiv preprint arXiv:2506.14008. (Under review) [link](https://arxiv.org/abs/2506.14008)

- **Arnez, F.**, Vasquez, D. A. M., Radermacher, A., & Terrier, F. (2024, July). *Latent Representation Entropy Density for Distribution Shift Detection*. In **Conference on Uncertainty in Artificial Intelligence (UAI)**. [link](https://proceedings.mlr.press/v244/arnez24a.html)

- **Arnez, F.**, Espinoza, H., Radermacher, A., & Terrier, F. (2022, September). *Towards Dependable Autonomous Systems Based on Bayesian Deep Learning Components*. In 2022 18th European Dependable Computing Conference (EDCC) (pp. 65-72). IEEE. [link](https://arxiv.org/abs/2301.05297)

- **Arnez, F.**, Espinoza, H., Radermacher, A., & Terrier, F. (2021, September). *Improving Robustness of Deep Neural Networks for Aerial Navigation by Incorporating Input Uncertainty*. Proceedings of the Workshop on Artificial Intelligence Safety Engineering WAISE 2021, International Conference on Computer Safety, Reliability, and Security (pp. 219-225). Springer. [link](https://link.springer.com/chapter/10.1007/978-3-030-83906-2_17)

- **Arnez, F.**, Espinoza, H., Radermacher, A., & Terrier, F. (2020). *A Comparison of Uncertainty Estimation Approaches in Deep Learning Components for Autonomous Vehicle Applications.* Proceedings of the Workshop on Artificial Intelligence Safety 2020, vol 2640, ISSN: 1613-0073. [link](http://ceur-ws.org/Vol-2640/paper_24.pdf)

- Full list of publications in [Google Scholar profile](https://scholar.google.com/citations?hl=en&user=faWEPTIAAAAJ&view_op=list_works&sortby=pubdate)

# <<section_title>>
- **Ph.D. Thesis Supervision:** *Deep Neural Network Uncertainty Estimation on Embedded Targets* (Aymen Bouguerra, 2024 - Present); *Out-of-Distribution Detection with Vision Foundation Models and Post-hoc Methods* (starting Oct. 2026)

- **Reviewer in Conferences/Workshops:** NeurIPS (2026), ICML (2026 -- Gold Reviewer), ICLR (2027, ongoing), BMVC (2026), CVPR (2025), AAAI (2026, 2025), UAI (2026, 2025, 2024), WACV (2025), IV (2025, 2022), AI-Safety workshop at IJCAI (2024), Releasing Robots into the Wild Workshop at ICRA (2022)

- **Workshop & Conference Organizing Committee Member:** Workshop on AI Safety and Security at IJCAI 2024, ICVES 2026 (ongoing)
