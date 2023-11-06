#!/bin/bash -e
#SBATCH --job-name=wrf_build
#SBATCH --partition=milan
#SBATCH --time=0-04:00:00
#SBATCH --mem=20GB
#SBATCH --cpus-per-task=4
# load environment module
module purge
module load Apptainer/1.2.2
# recent Apptainer modules set APPTAINER_BIND, which typically breaks
# container builds, so unset it here
unset APPTAINER_BIND
# create a build and cache directory on nobackup storage
export APPTAINER_CACHEDIR="/nesi/nobackup//pletzera/apptainer_cache"
export APPTAINER_TMPDIR="/nesi/nobackup//pletzera/apptainer_tmpdir"
mkdir -p /nesi/nobackup//pletzera/apptainer_cache /nesi/nobackup//pletzera/apptainer_tmpdir
setfacl -b /nesi/nobackup//pletzera/apptainer_tmpdir
# build the container
apptainer build --force --fakeroot wrf.sif wrf.def
