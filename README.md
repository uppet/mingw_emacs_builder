# Build mingw emacs using github action

Clone this repo if you want to customize your building **tag** of **emacs** repo

## How to use

Edit **rel.txt** to set the eamcs tag to build.
**Examples:**

- master
- emacs-29.4
- emacs-30.1-rc1

Edit **rel_tag.txt** to name release. After github action a zip publish to the named release.
**Examples:**

- my-master-build
- my-emacs-29.4
- my-candy
- 0.0.1


Open the actions tab of github repo WebUI and trigger the runner by hand. 