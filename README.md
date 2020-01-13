# dcs-spack-config
CCI DCS (AiMOS) spack configuration and scripts

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
spack env create dev
spack env activate dev
# copy the yaml files into the dev
cp /path/to/the/dir/with/the/yaml/files/* var/spack/environments/dev/.
# copy the compiler yaml file into the spack etc dir
cp /path/to/the/dir/with/the/yaml/files/compilers.yaml etc/spack/.
# comment out the gcc 6.5.0, 7.4.0 and llvm sections of compilers.yaml 
# as they have not yet been installed - not sure if this is completely necessary
```

