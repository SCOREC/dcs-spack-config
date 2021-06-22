# dcs-spack-config
CCI DCS (AiMOS) **RHEL8** spack configuration and scripts for building the XGCm and GITRm dependencies
with the GNU GCC compilers and SpectrumMPI.

## contents

config.yaml - global config

install.sh - package installation commands

modules.yaml - lua modules specifications

README.md - this file

setupSpack.sh - env needed for executing spack commands

spack.yaml - list of packages to install, compilers, and external packages

## setup

```
git clone git@github.com:spack/spack.git spack
cd !$
git checkout v0.16.2
# add netcdf-c updates
git cherry-pick 1492461 5a747b9 19c7188
# create the environment
cp -r /path/to/this/directory .
source setupSpack.sh
```

## resuming work in an environment

```
source /gpfs/u/software/dcs-rhel8-spack-src/v0162gccSpectrum/setupSpack.sh
```

