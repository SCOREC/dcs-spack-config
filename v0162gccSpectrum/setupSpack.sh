export SPACK_ROOT=/gpfs/u/software/dcs-rhel8-spack-src/spack
export PATH=$SPACK_ROOT/bin:$PATH
source $SPACK_ROOT/share/spack/setup-env.sh
spack env activate -d .
