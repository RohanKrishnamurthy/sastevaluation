# Benchmarking-Open-Source-Static-Analysis-Security-Testing-Tools-for-C

Automated process of evaluation of 11 open source SAST tools for the C programming language on the Juliet Test Suite
for C/C++ and of six tools on the Wireshark production software.

Authors: Christoph Gentsch, Rohan Krishnamurthy and Thomas Heinze, German Aerospace Center (DLR), Jena, Germany

**Paper**

This evaluation of different open-source tools is availble as part of the submission of the paper for ISOLA'2020 conference.
The submitted copy of the paper is available in this repository [here](paper/sast_isola.pdf).

**File structure:**

- `main.sh/`

  - contains pre-requisits packages for Ubuntu 18.04 and initiation of evaluation.
  
- `menu.sh/`

  - provides modularity for the evaluation of tool of your choice (out of the installed 11 tools)

- `runners/`

  - this folder contains scripts to install and ebǘentually run the tool on Juliet test suite

- `import_log.py/`

  - imports the results from the tools

- `report.py/`

  - provides output of the evaluation in CLI, as HTML and as CSV formats


