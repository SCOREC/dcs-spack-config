# dcs-spack-config
CCI DCS (AiMOS) spack configuration and scripts for building the XGC depdencies
with the GNU GCC compilers and OpenMPI.

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
spack env create v0133gcc
spack env activate v0133gcc
# copy the yaml files into the v0133gcc
cp /path/to/the/dir/with/the/yaml/files/* var/spack/environments/v0133/.
# copy the compiler yaml file into the spack etc dir
cp /path/to/the/dir/with/the/yaml/files/compilers.yaml etc/spack/.
# add the wdmapp/wdmapp-config repo
# https://wdmapp.readthedocs.io/en/latest/spack/setup.html
git clone git@github.com:wdmapp/wdmapp-config.git
spack repo add wdmapp-config/spack/wdmapp
```

## resuming work in an environment

```
source /gpfs/u/software/dcs-spack-src/dcs-spack-config/setupSpack.sh
spack env activate v0133gcc
```

