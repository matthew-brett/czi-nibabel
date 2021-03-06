# To do

## Applicant Details Part 1

Set organization (currently Numfocus)

## Organization Details

Decide on organization!  Fill in details of organization name, address, contact person tax ID etc.

That organization has to sign [the form](./Inst_Approval_Form_Sept_2019.pdf).

## Proposal

> Limit to one sentence, maximum of 255 characters.

** Fill in here. Check with `g CTRL-g` in Vim, or by copying into relevant box
on page.**

Strengthen the social and code foundations of the Nibabel library by: extending
the API and input/output to better support metadata, support ouputs from image
registration, and by outreach through education.

### Amount Requested (required):

> Enter total budget amount requested in USD, including indirect costs; this
> number should be between \$50k and \$250k total costs and match total
> described in the Budget Description. Enter whole numbers only (no dollar
> signs, commas, or cents)

0

### Abstract/Proposal Summary (required) maximum of 250 words

Our proposal has two major components:

* Strengthening code foundations to make Nibabel more useful as an *brain
  image workbench* and *base library*.
* Broadening social foundations by building a platform and content for
  teaching neuroimaging with Nibabel.

We will *strengthen code foundations* by:

* Expanding the API to support image metadata by adding axis and tick labels.
* Extending support for reading and storing metadata from scanner outputs.
* Extending output formats to store metadata.
* Designing a standard API for brain surface data.
* Adding support for loading, manipulating, applying and storing outputs from
  image registration.

We will *broaden social foundations* by:

* Creating an open-access online course to teach neuroimaging using Nibabel as
  brain image workbench, built on existing materials from our neuroimaging teaching in Berkeley.
* Using the course materials as open, engaging and comprehensive documentation
  for the library.
* Recruiting a broader range of developers with targeted scholarships in the
  form of paid course certificates.
* Building and documenting the platform for delivering the course so that other
  fields and libraries can build on this foundation.

### Work plan

> Provide a description of the proposed work the applicants are requesting
> funding for, including resources the applicants will provide that are not
> part of the requested funding. For software development related work (e.g.,
> engineering, product design, user research), specify how the work fits into
> the existing software project roadmap. For community outreach related
> activities (e.g., sprints, training), specify how these activities will be
> organized, the target audience, and expected outcomes (maximum of 750 words).

See `./work_plan.md`.

### Milestones and Deliverables (required):

> List expected milestones and deliverables, and their expected timeline. Be
> specific and include (where possible) any goals for metrics the software
> project(s) are expected to reach upon completion of the grant (maximum of 500
> words)

See `./milestones.md`.

### Existing Support (required):

> List current and recent financial or in-kind support for the software
> project(s), including duration, amount in USD, and source of funding. Include
> in this section any previous funding for these software projects received
> from CZI (maximum of 250 words)

None applicable

### Landscape Analysis (required):

> Describe the other software tools (either proprietary or open source) that
> the audience for this proposal is primarily using. How do the software
> projects in this proposal compare to these other tools in terms of size of
> user base, usage, and maturity? How do existing tools and the project(s) in
> this proposal interact? (maximum of 250 words)

See `landscape_analysis.md`.

### Diversity, Equity, and Inclusion Statement (required):

> Advancing DEI is a core value for CZI and we are requesting information on
> your efforts in this area. Describe any efforts the software project(s) named
> in this proposal have undertaken to increase diversity, equity, and inclusion
> with respect to their contributors and audience. Please see examples from
> successful first cycle applications (maximum of 250 words) 

A major motivation for our project was to democratize coding in neuroimaging.
The dominant package for coding in neuroimaging was `SPM`, written in Matlab.
Python allows a wider range of scientists to use and extend our work. Unlike
other major software in neuroimaging, we made a strong policy of establishing
common ownership, rather than associating our code with a particular
institution.

We know that we lack diversity in contributors to Nibabel.  The gender ratio of
students in neuroscience is near 50%, but 3.4% of our commits are from authors
we know to identify as female.  We have made conscious progress; our lead
maintainer contributes to neuroimaging hackathons, and, as a result, two female
developers new to the project contributed 18% of Nibabel's commits over the
past year.

However, lack of diversity is self-perpetuating.  Despite our best intentions,
homogeneous backgrounds of the main contributors will make us less likely to
question our assumptions about the way we work and communicate.  This is
neither fair, nor sustainable; monoculture is a risk to the ecosystem.

We want to do more, and help others to do more.  A large part of our proposal
is for educational outreach, using the OpenEdX platform.  We can recruit from
diverse groups by offering scholarships in the form of paid certificates,
weighted for students outside our homogeneous demographic. Building and
piloting this system will help other projects to do the same.  We hope this
will help to achieve our common goal to promote diversity in open source and
science.

## Optional attachments

> Upload in PDF format; attachments should be uploaded in a combined single
> PDF. Include up to three pages of additional information. This section can
> include figures, charts and tables, references for the proposal, or any
> additional material in support of the proposal (maximum of three pages)

See `./optional_attachments.md`.

## CV of applicant

> Upload in PDF format; include current and recent employment, education
> history, and references to any major publications, software contributions, or
> other relevant outputs (maximum of two pages)

See `./mbcv` submodule.

## Budget description

> Upload in PDF format; budgets can be uploaded in a combined single PDF or one
> PDF for each software project (one page per software project maximum)
>
> * Description of the costs to be funded by this grant at a high level and in
>   narrative or tabular form, outlining costs for personnel (including names,
>   if known), supplies, equipment, travel, meetings/hackathons/sprints,
>   subcontracts, other costs, and up to 15% indirect costs (excluding
>   equipment and subcontracts).
>
> * Indirect costs are limited to up to 15% of direct costs and are included
>   within the annual budget total. Indirect costs may not be assessed on
>   capital equipment or subcontracts, but subcontractors may include up to 15%
>   indirect costs of their direct costs.
>
> * Budget should be requested in US dollars.
>
> * International grantees must use all grant funds exclusively for activities
>   conducted outside the United States of America. Travel expenses to the
>   United States (including round-trip tickets) should not be covered from the
>   requested grant funds.
>
> * Application budgets must reflect the actual needs of the proposal. The Chan
>   Zuckerberg Initiative will work closely with successful applicants to
>   arrive at a mutually acceptable budget after review.

Working in <https://docs.google.com/spreadsheets/d/1srftwgEl-3_sdVlxd1flCmayUNTXQT5x71aO04IhWJ8>

## Software project details

### Short description of software project (200 words maximum) (required)

Nibabel is a base library written in pure Python for working with a wide variety of brain imaging data formats as Numpy arrays.  We designed it to work two related roles: a Python workbench for researchers working with brain images, and a foundation upon which higher level libraries can build.  It is a dependency for nearly every Python library for brain imaging, including Nilearn and PyMVPA (machine learning), NiPy (functional brain imaging), DiPy (diffusion imaging) MNE (EEG and MEG analysis), PySurfer (brain surfce display), Nipype (analysis pipelines), DeepMedic and NiftyNet (neural network analysis of brain images). A total of 45 PyPI packages depend on Nibabel: https://libraries.io/pypi/nibabel/dependents

We also use Nibabel as the most basic layer of interaction with brain images, in our own work, and in teaching.  Nibabel presents an object-oriented interface to brain images, giving efficient Python access to the brain image data in the form of a Numpy array, and metadata in the form of a Python dictionary or Numpy record array.  These attributes make it relatively straightforward to build custom image processing pipelines, that filter, threshold, combine or display images.

## Software metrics

### List of upstream, downstream, or related software projects that the team is contributing to or receiving contributions from:

We only include contributions of 10 commits or more.

Matthew Brett contributions (number of commits):

Upstream:
    Numpy : 94
    Scipy : 281
    Statsmodels : 59
    Matplotlib : 56
    Scikit-image : 10

Downstream:
    Nipy : 1657
    Dipy : 564

Oscar Esteban contributions (number of commits):

Downstream:
    fMRIPrep: 1611
    dMRIPrep: 144
    sMRIPrep: 305
    NiWorkflows: 773
    SDCflows: 798
    Nipype: 1473
    MRIQC: 1708
    QAP: 169
    NiTransforms: 106
    Phantomas: 28

Chris Markiewicz contributions (number of commits):

Downstream:
    fMRIPrep: 1010
    Nipype: 852
    FitLins: 499
    Niworkflows: 290
    PyBIDS: 230
    Nilearn/Nistats: 36
    Quickshear: 31
    MRIQC: 24
    PySurfer: 10

Downstream contributions back (number of commits):
    Dipy : 185
    FSL : 108
    PyMVPA : 87
    Nipype : 65
    MichielCottaar/cifti : 60
    dcmstack : 22
    MNE : 15
    PySurfer : 13

### Additional metrics from project code repositories and package managers:

> Provide a short description of any considerations or caveats we should be
> aware of when computing metrics (e.g. a recent change in the name or hosting
> of the repository), or any additional information you would like to share
> about the project’s impact and quality. (maximum of 500 words)

We have been early adopters to formal software process.  We started using Git in 2007 and Github in 2010.  We required code review from 2010.  We used Buildbot for CI from 2011, Travis-CI from 2012, Appveyor from 2014, and Azure Pipelines from July 2019.

Our code coverage is 91.8%; we check on each proposed merge commit with CodeCov.

https://libraries.io/pypi/nibabel/sourcerank gives us a score of 20.

Github gives us the following metrics:
https://github.com/nipy/nibabel/network/dependents?package_id=UGFja2FnZS01MjM0MTE2MA%3D%3D

* Used by 2,337 repositories.
* Used by 286 packages.

PyPI analysis lists 46 PyPI packages that depend on Nibabel: https://libraries.io/pypi/nibabel/dependents
