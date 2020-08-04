---
# YAML metadata
title: "Nibabel - optional attachments"
linkcolor: blue
urlcolor: blue
bibliography: czi.bib
geometry: margin=2cm
fontfamily: arev
fontsize: 12pt
---

## Neuroimaging landscape

### Major not-Python neuroimaging packages

* [SPM](https://www.fil.ion.ucl.ac.uk/spm): Matlab API and toolbox to analyze
  function brain imaging data.
* [AFNI](https://afni.nimh.nih.gov): "AFNI is a set of C programs for
  processing, analyzing, and displaying functional MRI (FMRI) data".
* [FSL](https://fsl.fmrib.ox.ac.uk): GUI and command line library of tools for
  analyzing various MRI data, including functional, structural and diffusion
  data.
* [FreeSurfer](https://surfer.nmr.mgh.harvard.edu): "An open source software
  suite for processing and analyzing (human) brain MRI images" specializing in
  analysis of cortical surface data.
* [BrainVoyager](https://www.brainvoyager.com): A commercial C/C++ package
  with a comprehensive GUI.

### Selected Python neuroimaging packages (all depend on Nibabel)

* [Nipype](https://nipype.readthedocs.io): Provides standard interfaces to
  call routines / binaries in packages above, to implement neuroimaging
  analysis pipelines.
* [fMRIPrep](https://fmriprep.org): higher-level interface to Nipype / Nibabel
  for building standard analysis pipelines.
* [Nilearn](https://nilearn.github.io): "... module for fast and easy
  statistical learning on NeuroImaging data."
* [MNE](https://mne.tools): "Python software for exploring, visualizing, and
  analyzing human neurophysiological data: MEG, EEG, sEEG, ECoG, and more."
* [DIPY](https://www.dipy.org): "... project for computational neuroanatomy,
  focusing mainly on diffusion magnetic resonance imaging (dMRI) analysis",
  including image registration.
* [Nipy](https://nipy.org/nipy): Functional MRI analysis library.

### Registration packages

Other packages specialized for spatial registration of brain images:

* [ITK](https://itk.org): Insight ToolKit - a comprehensive C/C++ library for
  image processing, including image registration.
* [SimpleITK](https://simpleitk.org): "a simplified programming interface to
  the algorithms and data structures of the Insight Toolkit (ITK)".  It
  includes bindings for calling ITK routines directly from Python.
* [ANTS](http://picsl.upenn.edu/software/ants): "Advanced Normlization Tools";
  a C/C++ set of programs tailored to brain image processing.
* [NiftiyReg](http://cmictig.cs.ucl.ac.uk/wiki/index.php/NiftyReg):
  C/C++ "software for efficient medical image registration".

### Some other relevant Python libraries

* [Xarray](http://xarray.pydata.org): extends Numpy arrays with labels and
  attributes.
* [NiTransforms](https://github.com/poldracklab/nitransforms): developing
  library for reading and processing spatial transformations stored in various
  formats.
* [Dcmstack](https://github.com/moloney/dcmstack): "DICOM to Nifti conversion
  with the added ability to extract and summarize meta data from the source
  DICOMs."

## Metrics of Neuroimaging package uptake

![](ann_rev_fig.jpeg)

> Usage of the MATLAB and Python programming languages (a) in general, (b) in
biomedical research, and (c) in neuroimaging research. The data in panel
a come from the PYPL (Popularity of Programming Language) Index, which tracks
Google searches for programming-language tutorials. The data in panel b show
the number of publications per year on PubMed that mention “MATLAB” or
“Python.” The data in panel c show mentions of major software packages in
functional brain imaging publications (counts on Google scholar). SPM
(statistical parametric mapping) is MATLAB based, while FSL [FMRIB (functional
magnetic resonance imaging of the brain) Software Library] and AFNI (Analysis
of Functional NeuroImages) build increasingly on Python.

From Poldrack, Russell A., Krzysztof J. Gorgolewski, and Gaël Varoquaux. 2019. *Computational and Informatic Advances for Reproducible Data Analysis in Neuroimaging* Annual Review of Biomedical Data Science 2 (1): 119–38. <https://doi.org/10.1146/annurev-biodatasci-072018-021237>.

## Nibabel commit activity

Number of commits per month since 2013.  Project activity is stable, trending
upwards.

![](commits_per_month.png){height=400}
