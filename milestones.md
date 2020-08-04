# Milestones and Deliverables (required):

<!---
> List expected milestones and deliverables, and their expected timeline. Be
> specific and include (where possible) any goals for metrics the software
> project(s) are expected to reach upon completion of the grant (maximum of 500
> words)
-->

All times are *relative to the start of the grant*; thus "6m" means the deadline is 6 months after the start of the grant.

Expressive API
==============

Axis and tick labels
--------------------

* Integrate Xarray axis / tick label support into Nibabel : 3m
  * Contribute to Xarray if necessary to remove Pandas dependency:
    https://github.com/pydata/xarray/issues/3981 : 0-3m
  * Design/implement API to record/modify metadata available in standard
    formats : 3m
* Merge basic https://github.com/moloney/dcmstack DICOM format parsing into
  Nibabel : 3m
* Implement Xarray image labeling with standard DICOM metadata : 5m
* Design/discuss HDF5 serialization of standard imaging format : 5m
* Complete design/discussion of JSON header metadata for standard NIfTI
  format: https://github.com/nipy/nibabel/wiki/BIAP3 : 5m
* Implement load / save of labels using HDF5 / JSON : 7m
* Create framework for parsing private DICOM elements : 7m
* Improve current parsers for private DICOM elements in Siemens files: 8m
* Create thin meta data normalization layer for abstracting away vendor's
  different storage locations : 10m
* Create framework for summarizing meta data across large number of DICOM
  files : 10m
* Extend DICOM metadata parsers to other manufacturers (Philips, GE): 12m

API for surface data
--------------------

* Design standard API for surface data format : 3m
* Implement standard API for surface data format : 5m
* Design efficient HDF5 container for surface data format : 7m

Range
=====

Registration transforms
-----------------------

* Complete the test-driven development of read/write operations from/to all
  the above software into internal data structures:
    * fix identified bugs in the current NiTransforms implementation: 1m,
    * implement the support for transforms on the sphere: 3-5m
    * implement sniffing of format for automaginc loading of transforms: 1m
* Implementation of the X5 file format specification (BIDS extension proposal
14) with labels implemented in Xarray and stored with HDF5: 3m
* Implementation of operations of spatial transforms:
    * composition/chaining (0m - done),
    * distribution/outer-product (2m),
    * numerical inversion (2m)
* Implementing tooling to apply transforms on images and other data objects:
    * coordinates (pointsets and surfaces) mapping (0m - done),
    * resampling of images (regularly gridded data) (0m - done), <!-- it would be interesting to consider resampling of parcellations, and also, 4D splines - neither are available in scipy to the best of my knowledge -->
    * resampling of surfaces and mixed surface/volumes (1m).
* Generate and deploy API documentation and manuals (0.5m).
* Expand the educational materials and Jupyter Notebooks (3m).
* Integrate NiTransforms into Nibabel as a module (0.5m).

Strengthening social foundations
================================

* Initial build of OpenEdX / JupyterHub integration : 4m
* Port of content from https://bic-berkeley.github.io/psych-214-fall-2016 to
  EdX platform : 4m
* Video lecture materials for course : 4m
* Start course pilot with volunteer students and developers : 4m
* Start recruitment, advertise scholarships : 5m
* Review course materials after pilot : 6m
* Begin live course : 7m
* End live course : 10m
* Support for students doing pull-requests : 9m - 12m.
* Issuing scholarship certificates : 12m.
