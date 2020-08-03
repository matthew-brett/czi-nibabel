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

There are two major components to this proposal:

* Strengthening code foundations to make Nibabel more useful as an *brain
  image workbench* and as a base library.
* Strengthening and broadening social foundations by building a platform and
  content for teaching brain imaging with Nibabel.

Code foundations
================

Nibabel is a workbench, that provides a Python API for working with images in
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

Medical images typically have three or four axes, whose meanings depend on the
way the image was acquired.  The axes have natural labels,
expressing meaning, such as "time" or "slice", and they may have tick labels
such as time of acquisition (on a time or on a slice axis).  The scanner
captures this information, but typical image formats cannot store
them.  This makes it easier to make errors in processing, and lose important metadata. See discussion at https://github.com/nipy/nibabel/wiki/BIAP6

We will expand Nibabel's API to encode axis and tick labels by
integrating the Xarray package: http://xarray.pydata.org.  Xarray offers
standard HDF5 serialization, and exciting options for visualization,
including https://napari.org.

Adding labels to the API is not useful if we cannot read labels from the
scanner data, or save them with the image.  We will:

* Develop HDF5 equivalents of standard image formats, to allow serialization
  of data with labels.
* Expand the current standard image format, NIfTI, to store labels in a JSON
  addition to image metadata: https://github.com/nipy/nibabel/wiki/BIAP3
* Read image metadata from DICOM, the standard scanner format.

Reading and attaching DICOM data will start with code integrated from
Dcmstack: https://github.com/moloney/dcmstack see
: https://github.com/nipy/nibabel/wiki/BIAP4

DICOM metadata is often hidden inside "private" DICOM elements that need
specialized parsers. We will expand these parsers to preserve full metadata and
build a normalization layer to abstract vendor-specific storage locations for
metadata elements that describe the same thing.

Standard API for surface data
-----------------------------

Processing of images often results in data estimated on the brain
surface.  There are three common formats for such data: GIFTI, CIFTI and
Freesurfer.  Nibabel can read all these formats, but lacks a standard API with
which to read and store the surface data and metadata.  See discussion in
https://github.com/nipy/nibabel/issues/936 and
https://github.com/nilearn/nilearn/issues/2171.  We will develop a standard
API, apply it to the three standard formats, and design a efficient general
HDF5 storage container for serializing surface data and metadata.

Range
=====

Registration transforms
-----------------------

Nibabel's role as a workbench allows researchers to combine outputs from
processing in other packages.

Image registration is an important step in neuroimaging.  Many packages
estimate image registration parameters; each has their own format for storing
these estimates.

Using these estimates involves interpreting the stored transforms, and
combining chains of transforms into a single transform, to allow efficient
resampling of an image to match the position of another.

We have developed a package, Nitransforms, that can read and process several of the stored parameter files.  We will integrate Nitransforms into Nibabel, and develop a standard HDF5 format to store transforms, with labels implemented in Xarray and stored with HDF5.

Strengthening social foundations
================================

We want to recruit more developers, from a larger and more diverse pool, and help other projects do the same.

A scientific software package has the untapped advantage that we train in our
domain by using our package.  Training shows students that effective science
has an intimate relationship with code. We can and should show students that
analysis is not consumption of code, but contribution.

We propose to develop machinery and content for an open-access EdX course in
neuroimaging, using Nibabel as the standard workbench.  The content will teach
students to use Nibabel effectively, and to contribute code to libraries they
use.

We already have content for such a course from our neuroimaging teaching in
Berkeley; seehttps://www.frontiersin.org/articles/10.3389/fnins.2018.00727 and
https://bic-berkeley.github.io/psych-214-fall-2016/syllabus.html.

Materials in the EdX course will:

1. Serve as documentation and demonstration for the library.
2. Attract young developers / practitioners to the library, tools and workflow
3. Make it more likely that practitioners will become developers.

We will attract a more diverse pool of developers by offering scholarships
for the course, to provide free completion certificates / grading
support, in return for 2 pull requests to some library of relevance for
imaging, at the end of the course.  We weight scholarships towards groups
outside our own white Western male demographic.

Development and pilot testing from this grant will provide documentation, code
and hosting options to make it easier for other projects to use and extend
this model.
