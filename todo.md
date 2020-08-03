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

Strengthen the social and code foundations of the Nibabel library by outreach through education, and extension of the Nibabel API to better support modern data sources and storage formats.

### Amount Requested (required):

> Enter total budget amount requested in USD, including indirect costs; this
> number should be between \$50k and \$250k total costs and match total
> described in the Budget Description. Enter whole numbers only (no dollar
> signs, commas, or cents)

0

### Abstract/Proposal Summary (required) maximum of 250 words

Abstract ... TBC

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

None

### Landscape Analysis (required):

> Describe the other software tools (either proprietary or open source) that
> the audience for this proposal is primarily using. How do the software
> projects in this proposal compare to these other tools in terms of size of
> user base, usage, and maturity? How do existing tools and the project(s) in
> this proposal interact? (maximum of 250 words)

Landscape ... TBC

### Diversity, Equity, and Inclusion Statement (required):

> Advancing DEI is a core value for CZI and we are requesting information on
> your efforts in this area. Describe any efforts the software project(s) named
> in this proposal have undertaken to increase diversity, equity, and inclusion
> with respect to their contributors and audience. Please see examples from
> successful first cycle applications (maximum of 250 words) 

<!---
Chris - remind me how you recruited Dorota Jarecka and Hao-Ting Wang?
-->

A major motivation for our project has been to democratize coding in
neuroimaging.  The dominant package for coding in neuroimaging is `SPM`,
written in Matlab.  Python allows a wider range of scientists to use and
extend our work. Unlike other major software in neuroimaging, we made a strong
policy of establishing common ownership, rather than associating our code with
a particular institution.

We are well aware of the lack of diversity in contributors to Nibabel.  The
gender ratio of students in neuroscience is fairly evenly balanced, but only
3.4% of our commits are from authors we know to identify as female.  We have
made progress; in the last year, female developers contributed 18% of Nibabel's
commits.

Lack of diversity is self-perpetuating.  Despite our best intentions, the
homogeneous backgrounds of the main contributors will make us less likely to
question our assumptions about the way we work and communicate.  This is not
fair, but also, as in biology, monoculture is a risk to the ecosystem.

We want to do much more, and help others to do the same.  A large part of our
proposal is for educational outreach, using the OpenEdX platform.  We can
recruit from diverse groups by offering scholarships in the form of paid
certificates, weighted for students outside our dominant white, Western
male demographic.   Building and piloting this system will allow other projects
to do the same.  We hope this will prove important in achieving our common
goal to promote diversity in open source and science.

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

## Software project details

### Short description of software project (200 words maximum) (required)

Nibabel is a base library written in pure Python for working with a wide variety of brain imaging data formats as Numpy arrays.  We designed it to work two related roles: a Python workbench for researchers working with brain images, and a foundation upon which higher level libraries can build.  It is a dependency for nearly every Python library for brain imaging, including Nilearn and PyMVPA (machine learning), NiPy (functional brain imaging), DiPy (diffusion imaging) MNE (EEG and MEG analysis), PySurfer (brain surfce display), Nipype (analysis pipelines), DeepMedic and NiftyNet (neural network analysis of brain images). A total of 45 PyPI packages depend on Nibabel: https://libraries.io/pypi/nibabel/dependents

We also use Nibabel as the most basic layer of interaction with brain images, in our own work, and in teaching.  Nibabel presents an object-oriented interface to brain images, giving efficient Python access to the brain image data in the form of a Numpy array, and metadata in the form of a Python dictionary or Numpy record array.  These attributes make it relatively straightforward to build custom image processing pipelines, that filter, threshold, combine or display images.

## Software metrics

### List of upstream, downstream, or related software projects that the team is contributing to or receiving contributions from:

Matthew Brett contributions (number of commits):

Upstream:
    Numpy : 94
    Scipy : 281
    Statsmodels : 59
    Matplotlib : 56

Downstream:
    Nipy : 1657
    Dipy : 564

Downstream contributions back (number of commits, ):
    Dipy : 185
    FSL : 108
    PyMVPA : 87
    Nipype : 65
    dcmstack : 22
    MNE : 15

### Additional metrics from project code repositories and package managers:

> Provide a short description of any considerations or caveats we should be
> aware of when computing metrics (e.g. a recent change in the name or hosting
> of the repository), or any additional information you would like to share
> about the project’s impact and quality. (maximum of 500 words)

We have been early adopters to formal software process.  We started using Git in 2007 and Github in 2010.  We required code review from 2010.  We used Buildbot for CI from 2011, Travis-CI from 2012, Appveyor from 2014, and Azure Pipelines from July 2019.

Our code coverage is 91.8%; we check on each proposed merge commit with CodeCov.
