# Landscape Analysis

<!-- 247/250 words -->

Nibabel exists within the Nipy (Neuroimaging in Python) community of projects, forming the I/O layer for more specifically targeted packages. In addition to Nipy, neuroimaging researchers have access to several generalist suites, including SPM, AFNI, FSL and FreeSurfer, as well as a number of modality or analysis-specific suites. Nipy was initiated in 2006, compared to 1990 (SPM), 1994 (AFNI) or 1998 (FSL, FreeSurfer).

Neuroimaging researchers require flexible tooling to analyze neural data. The Python language provides arbitrary flexibility, and Nipy tools provide data structures and common algoirthms. The SPM suite is a MATLAB toolbox, enabling researchers to write custom MATLAB scripts. FSL, AFNI, FreeSurfer and ANTs are predominantly C/C++ packages, which provide flexibility via shell scripting, configuration files and complex command-line invocations.

Poldrack, et al., 2019 (https://doi.org/10.1146/annurev-biodatasci-072018-021237) determined that Python was used in 1700 functional neuroimaging publications in 2018, compared with AFNI (1450), FreeSurfer (2050), FSL (3250) SPM (4850) and MATLAB (7400). The metric was mentions in Google Scholar.

Beyond forming the core of a Python-based software stack, Nibabel strives to achieve read/write compatibility with the data formats used by other software packages, enabling researchers to work with the tools that best suit their task. 

The AFNI and FSL suites, although primarily written in C, now contain Python packages as well. AFNI’s Python code is primarily used for visualization and to coordinate AFNI binary programs. The fslpy package uses Nibabel for its neuroimage IO.

Nibabel is a direct dependency of 286 packages and 2,335 repositories on GitHub.
