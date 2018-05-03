
ros-delete - 
# synopsis

**ros delete** ARGS...

Slightly complex arguments.

## ros delete dump IMAGES...

Whem ARGS starts with `dump`, it considers the remaining args as the names for the dumped images.
It then deletes the image with the given name, if it exists.

The deletion happens only to the images compatible with the current lisp
implementation/version.  For example, when ccl-bin/1.10 and sbcl-bin/1.3.1
both have images named X, and if the current lisp in use is sbcl-bin/1.3.1,
then `ros delete dump X` removes sbcl-bin/1.3.1/X only.

## ros delete IMPLS...

When the first argument is not `dump`, then the arguments are treated as a
list of installed implementations.

If a name of some implementation is given without version specifiers,
e.g. sbcl-bin, then it removes all instances (versions) of sbcl-bin.

If a version is specified, then it removes only the specified instance.

<!-- somecommand -->
 
<!--   : description. end with a period. -->

# description

<!-- # options -->
<!--  -->
<!-- # Environmental Variables -->

# SEE ALSO
_ros_(1)
