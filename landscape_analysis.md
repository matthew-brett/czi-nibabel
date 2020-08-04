# Landscape Analysis

<!---
Describe the other software tools (either proprietary or open source) that
the audience for this proposal is primarily using. How do the software
projects in this proposal compare to these other tools in terms of size of
user base, usage, and maturity? How do existing tools and the project(s) in
this proposal interact? (maximum of 250 words)
-->

<!-- 249/250 words -->

Nibabel is the base layer for the Nipy (Neuroimaging in Python) community of projects.
It is the basic workbench and input/output layer on which higher-level libraries can build.
Advanced visualization, model fitting, and analysis libraries in Python such as Nilearn or DIPY
have access to the great power and flexibility of Python and Numpy via Nibabel.
<!-- adds a reference to the big guys nilearn and dipy to support the idea of workbench -->

Neuroimaging researchers need flexible tooling to analyze neural data.
Poldrack et al. (2019; https://doi.org/10.1146/annurev-biodatasci-072018-021237) review the success of Python for neuroimaging and provide some data about the utilization of different solutions.
The most widely-used alternatives to the Python/Nibabel ecosystem are:

  - C/C++ based (AFNI, FreeSurfer, FSL, ITK/ANTs), which can be combined (but hardly mixed together) in higher-level processing with shell scripting
    and some of them, GUIs; or
  - MATLAB/SPM (https://www.fil.ion.ucl.ac.uk/spm), which bundles low-level libraries and high-level processing.

The Nipype Python library provides a regular interface in Python to all the software above,
thereby eliminating most of the incompatibilities between tools in combination with Nibabel’s
read/write implementation of file formats.
Using the Python/Nibabel/Nipype framework, researchers are equipped to build powerful high-level
processing solutions such as fMRIPrep (https://doi.org/10.1038/s41592-018-0235-4; +200 citations 
as per scholar.google.com) without reinventing the wheel, just harnessing existing and mature OSS.