
Medical imaging instruments typically provide images in DICOM format, which can
include a large amount of meta data along with each image. Compared to the swath
of vendor specific formats that proceeded DICOM, it is a much welcome
improvement. However the format also has a number of significant drawbacks that
have the lead to many researchers preferring to work in other formats, with the
first step in any analysis often being a conversion from DICOM to one of these
other formats (for MRI and especially nuero applications, this format is
typically [Nifti](https://nifti.nimh.nih.gov/)).

Typically, each DICOM file captures a single 2D image (although newer DICOM
specifications allow for "multi-frame" files) and so a conversion program will
usually take in multiple DICOM files and produce a single output file containing
the full nD array. Typically only the most basic meta data is preserved in
the output file, like the orientation of the array and the spacing between voxels.

We propose to leverage [xarray](http://xarray.pydata.org/en/stable/) in order to
preserve arbitrary meta data from the source DICOM files in the resulting output
file. We will be able to provide meaningful labels on the array axis and will
even have the ability to preserve meta data that is specific to a given
slice or volume in the nD array. We will leverage the expertise gained in developing
a tool with a similar approach [dcmstack](https://github.com/moloney/dcmstack) to
guide the development of the xarray based approach.

The xarray package brings significant benefits to researchers as it allows for
plots and images to be automatically labeled, and it provides intuitive access
to the meta data in a manner that minimizes the chance for human error.
There is a significant eco-system developing around xarray, including a relatively
new desktop image viewer [napari](https://napari.org/) which in turn leverages
[vispy](http://vispy.org/) to allow performant and composable GPU based rendering
from python. There are a number of appealing serialization formats supported
directly by xarray (including HDF5 and [zarr](https://zarr.readthedocs.io/en/stable/)),
but for the sake of compatibilty we will also add the ability to serialize xarray
to/from Nifti by storing the xarray meta data in a Nifti header extension.

While the DICOM format is vendor agnostic, it is quite common for more advanced
meta data (that can be crucial in research applications) to be hidden inside
"private" DICOM elements that often need their own specialized parser. As part of
this project we will improve and exapand these parsers inside the nibabel
package, so the full wealth of available meta data is preserved. We will also
provide a minimal normalization layer to abstract away the vendor-specific
storage locations for meta data elements that describe the same thing.

