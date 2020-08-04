# Work plan

<!---
Provide a description of the proposed work the applicants are requesting
funding for, including resources the applicants will provide that are not
part of the requested funding. For software development related work (e.g.,
engineering, product design, user research), specify how the work fits into
the existing software project roadmap. For community outreach related
activities (e.g., sprints, training), specify how these activities will be
organized, the target audience, and expected outcomes (maximum of 750 words).
-->

Our proposal has two major components:

* Strengthening code foundations to make Nibabel more useful as an *brain
  image workbench* and *base library*.
* Broadening social foundations by building a platform and content for
  teaching neuroimaging with Nibabel.

Code foundations
================

Nibabel is a workbench that provides a Python API for working with images in
many formats.  It is also a base library for tools implementing higher level
processing.

Nibabel's success depends on:

* How easy it is to express common imaging tasks in the API.
* The range of tasks it can perform.

An expressive, broad API will increase adoption and make it easier to teach.

Expressive API
==============

Axis and tick labels
--------------------

Brain images typically have three or four axes, whose meanings depend on the
way the image was acquired.  Axes have natural labels, expressing meaning,
such as "time" or "slice", and they may have tick labels such as acquisition
time.  The scanner captures this information, but typical image formats cannot
store it, so it is easy to lose metadata and make analysis errors; see
https://github.com/nipy/nibabel/wiki/BIAP6

We will expand Nibabel's API to encode axis and tick labels by integrating the
Xarray package: http://xarray.pydata.org.  Xarray simplifies HDF5
serialization, and visualization; see https://napari.org.

An API for labels is not useful if we cannot read labels from the scanner
data, or save them with the image.  We will:

* Develop HDF5 equivalents of standard image formats, for serialization of
  data with labels.
* Expand the current standard image format, NIfTI, to store labels in a JSON
  addition to image metadata: https://github.com/nipy/nibabel/wiki/BIAP3
* Read image metadata from DICOM, the standard scanner format.

Reading and attaching DICOM data will start with code integrated from
Dcmstack, by Brendan Moloney: https://github.com/moloney/dcmstack; see:
https://github.com/nipy/nibabel/wiki/BIAP4.  Brendan will contribute to this work.

DICOM metadata is often hidden inside "private" DICOM elements that need
specialized parsers. We will expand these parsers to preserve full metadata
and build a normalization layer to abstract vendor-specific storage locations
for metadata elements that describe the same thing.

API for surface data
--------------------

Neuroimaging data often refers to locations on the brain surface.  There are
three common formats for such data: GIFTI, CIFTI and Freesurfer.  Nibabel can
read these formats, but lacks a standard API for reading and storing surface
data with metadata; see https://github.com/nipy/nibabel/issues/936,
https://github.com/nilearn/nilearn/issues/2171.  We will develop a standard
API, apply it to the standard formats, and design an efficient general HDF5
storage container for serializing surface data and metadata.

Range
=====

Spatial transforms
------------------

Neuroimaging toolboxes include spatial registration methods to align the
objects and features present in two or more images. Registration methods
estimate and store spatial transforms.  There is no standard or compatible
format to store and reuse these transforms, across packages.

Because Nibabel is a workbench, we will extend its support to read transforms
calculated with AFNI, FreeSurfer, FSL, ITK/ANTs, NiftyReg, and SPM.

We have developed the NiTransforms project for this task; here we propose to
complete and integrate NiTransforms into Nibabel.  This will make transforms
more accessible to researchers, and therefore easier to work with, and reason
about.

Strengthening social foundations
================================

We want to engage more contributors, from a larger, more diverse pool, and
help other projects do the same.

Scientific software has the untapped advantage that we train in our domain by
using our package.  Training shows students that effective science has an
intimate relationship with code. We should show students that analysis is not
just code consumption, but contribution.

We will develop machinery and content for an open-access EdX course in
neuroimaging, using Nibabel as the standard workbench.  The content will teach
students to use Nibabel effectively, and to contribute code to libraries they
use.

We have content for such a course from our neuroimaging teaching in
Berkeley; see: https://www.frontiersin.org/articles/10.3389/fnins.2018.00727
and https://bic-berkeley.github.io/psych-214-fall-2016/syllabus.html.

The course will:

1. Serve as documentation and demonstration for Nibabel.
2. Attract young developers / practitioners to Nibabel tools and workflow.
3. Make it more likely that practitioners will become developers.

We will attract a more diverse pool of developers by offering scholarships
for the course in the form of free completion certificates / grading
support, in return for 2 pull requests to some library of relevance for
imaging, at course end.  We weight scholarships towards groups outside our own
white Western male demographic.

Development and pilot testing from this grant will provide documentation, code
and hosting options to make it easier for other projects to use and extend
this model, to attract developers, and as a source of funding.
