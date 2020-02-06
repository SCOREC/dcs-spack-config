# dcs-spack-config
CCI DCS (AiMOS) spack configuration and scripts for building the XGC depdencies
with the IBM XL compilers and Spectrum-MPI.

## contents

compilers.yaml - compiler list

config.yaml - global config

install.sh - package installation commands

modules.yaml - hierarchical layout for lua modules

packages.yaml - system installed packages

README.md - this file

setupSpack.sh - env needed for executing spack commands

spack.yaml - list of packages to install

## setup

```
git clone git@github.com:spack/spack.git spack
cd !$
git checkout v0.13.3
# add the simmetrix-simmodsuite package from the develop branch
git cherry-pick 5ddf5e2
# create the environment
spack env create v0133
spack env activate v0133
# copy the yaml files into the v0133
cp /path/to/the/dir/with/the/yaml/files/* var/spack/environments/v0133/.
# copy the compiler yaml file into the spack etc dir
cp /path/to/the/dir/with/the/yaml/files/compilers.yaml etc/spack/.
```

## install cmake

The bootstrap step of the cmake install fails with the XL compilers.  I
installed it manually outside of the environment with spack and gcc4.8.5 

```
spack install cmake%gcc@4.8.5_rhel7
```

Then added the path to `packages.yaml`.

