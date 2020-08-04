# Documents for NIbabel CZI EOSS grant application

[Grant RFA](https://chanzuckerberg.com/wp-content/uploads/2020/06/EOSS-3-RFA-Announcement-and-Instructions-CYCLE-3-COMBINED-1.pdf).

Submission deadline is: August 4, 2020 by 5 pm Pacific Time.

Tentative title: **Strengthening community and code foundations for brain
imaging**.

> Proposed projects should be 12 months in duration with a projected start
> date no earlier than January 1, 2021. Actual start date may vary.

Link to [grant on online CZI
portal](https://apply.chanzuckerberg.com/sub/19208104).

## Initial sketch

* DICOM to NIfTI etc support, with integration of
  [dcmstack](https://github.com/moloney/dcmstack).  This may well involve integration with xarray (see below) (Brendan Moloney, MB)
* Labelled axes for images, probably via [xarray](http://xarray.pydata.org)
  (Chris M, MB)
* Integrated API for surface formats - (Chris M) - see [Nibabel
  issue](https://github.com/nipy/nibabel/issues/936)
* Integrate [nitransforms](https://github.com/poldracklab/nitransforms) for
  input / output and combination spatial transforms, including standardization
  of file formats (see HDF5 below) (Oscar E)
* HDF5 serialization for all image formats (Chris M)
* New tractography file standard - see [nibabel
  issue](https://github.com/nipy/nibabel/issues/943) (Oscar E)
* Improved memory performance for image iteration (suggestion by Gaël V).
* Performant desktop and web image visualization, investigate
  [vispy](http://vispy.org/) and [napari](https://napari.org).
* Ability to read images directly from URLs, read / write images to /
  from AWS, GCS, Azure data storage addresses - c.f. [Pandas
  I/O](https://pandas.pydata.org/pandas-docs/version/1.1.0/whatsnew/v1.1.0.html#fsspec-now-used-for-filesystem-handling)

## Education

MB is floating the idea of integrating an EdX course into the proposal, with the basis from these two Berkeley courses:

* [Reproducible and Collaborative Statistical Data
  Science](https://www.frontiersin.org/articles/10.3389/fnins.2018.00727)
  (2015).
* [Functional MRI
  methods](https://bic-berkeley.github.io/psych-214-fall-2016/syllabus.html)

This would:

1. Serve as documentation and demonstration for the library.
2. Attract young developers / practitioners to the library, tools and workflow
3. Make it more likely that the practitioner will become a developer.

We propose to make our project more diverse by offering scholarships for the
source, which would provide free completion certificates / grading support, in
return for 2 pull requests to some library of relevance for imaging, at the
end of the course.

MB is trying to get feedback from the CZI for this part of the proposal.
