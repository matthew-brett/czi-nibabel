# Landscape Analysis

> 250 words max

fMRI researchers have various tools available, as reviewed in our recent paper (https://doi.org/10.1101/694364, under revision) - in particular, Supplementary Table 1 compares the main available tools. In general, there is not a workflow like fMRIPrep - all the alternatives are, generally, nose-to-tail approaches highly adapted to one particular analysis design. Conversely, fMRIPrep's approach is to "augment" the MRI scanner so that it "provides" data ready for analysis. That affords researchers with the necessary flexibility to freely plan the analysis that is optimal for their research questions.

NiBabel is widely adopted, and alternatives are limited. ITK has a wide portfolio of formats, albeit the particular implementation of the NIfTI standard is incomplete and introduces unintended issues in processing. Otherwise and laboriously, neuroimaging researchers could bring together the segregated implementation of imaging formats to replace NiBabel.

Finally, although other workflow engines (and even specification languages) exist, Nipype is the most widely used engine because it offers a portfolio of Python interfaces to the most-commonly used neuroimaging software. These interfaces make it unique. Pydra emerges as an improvement over Nipype's workflow engine to integrate new workflow semantics (arbitrary and dynamic map and reduce operations, conditional decision paths, etc.) which, to our knowledge, are not supported by any workflow platform.
