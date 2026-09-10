#!/bin/bash

#apptainer exec almalinux10.sif scripts/run.sh

apptainer exec --bind /scratch:/scratch almalinux10.sif scripts/run.sh
