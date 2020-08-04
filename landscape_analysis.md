# Landscape Analysis

<!---
Describe the other software tools (either proprietary or open source) that
the audience for this proposal is primarily using. How do the software
projects in this proposal compare to these other tools in terms of size of
user base, usage, and maturity? How do existing tools and the project(s) in
this proposal interact? (maximum of 250 words)
-->

<!-- 249/250 words -->

Nibabel is the base layer for the Neuroimaging in Python community of
projects. It is the workbench and input/output layer on which
higher-level libraries can build.

Neuroimaging researchers need flexible tooling to analyze neural data.
Python/Numpy provide great power and flexibility; Nibabel provides data
structures and common algorithms to apply Python libraries to imaging data.

Researchers using Python for neuroimaging are all but invariably using Nibabel either directly, or via a high-level library.

The most directly analogous alternative to the Python/Nibabel ecosystem is SPM,
a MATLAB toolbox bundling low-level libraries and high-level processing: https://www.fil.ion.ucl.ac.uk/spm.

Other widely-used packages with a lower emphasis on code in analysis are FSL,
AFNI and Freesurfer; these are C/C++ processing libraries and GUIs with
automation via shell-scripts and configuration files.

Counts of 2018 scholar.google.com mentions in https://doi.org/10.1146/annurev-biodatasci-072018-021237 found (name, years active, count):

* SPM (1991-): 4850
* FSL (2000-): 3250
* Freesurfer (1999-): 2055
* Python (2007-) 1685
* AFNI (~1996-) 1455

Nibabel has read/write compatibility with data formats used by SPM/FSL/AFNI. FSL ships with Python code that imports Nibabel.

The Nipype Python library uses Nibabel to provide a standard Python interface
to the software listed above, making it possible to mix tools freely within
a Python processing pipeline.

fMRIPrep further builds on Nibabel and Nipype to implement standard processing pipelines: https://doi.org/10.1038/s41592-018-0235-4.

In terms of coding practice, Nibabel has had Public Continuous-Integration
(PCI) since 2012, and 91.8% public coverage.  Of the non-Python packages, none
have reported coverage; only AFNI has recently implemented some PCI.
