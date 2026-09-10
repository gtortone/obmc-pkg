#!/bin/bash

#apptainer exec almalinux10.sif /bin/bash 

apptainer exec --bind /scratch:/scratch almalinux10.sif /bin/bash

