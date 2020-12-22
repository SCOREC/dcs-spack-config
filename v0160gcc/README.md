# dcs-spack-config
CCI DCS (AiMOS) spack configuration and scripts for building the XGC depdencies
with the GCC compilers and OpenMPI.

## contents

config.yaml - global config

modules.yaml - hierarchical layout for lua modules

README.md - this file

setupSpack.sh - env needed for executing spack commands

spack.yaml - spack stacks/environment specification

## setup

```
git clone git@github.com:spack/spack.git spack
cd !$
git checkout v0.16.0
# cp setupSpack.sh and edit the path to the spack repo
source setupSpack.sh
# create the environment
spack env create v0160
spack env activate v0160
# add gcc8.4 and find existing packages - already included in spack.yaml
# spack compiler find /gpfs/u/software/ppc64le-rhel7/gcc/8.4.0/1/bin
# spack external find
# copy the yaml files into the v0160
cp /path/to/this/dir/*.yaml var/spack/environments/v0160/.
```

## resuming work in an environment

```
cd /gpfs/u/software/dcs-spack-src/spack_v0160
source setupSpack.sh
spack env activate v0160
```

