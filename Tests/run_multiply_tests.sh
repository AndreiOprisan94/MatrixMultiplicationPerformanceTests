#!/bin/bash

source ./initial_setup.sh

MPI_PROCESSES=7

for (( MATRIX_DIMENSION=${MATRIX_DIMENSION_START}; MATRIX_DIMENSION<=${MAX_MATRIX_DIMENSION}; MATRIX_DIMENSION+=${MATRIX_DIMENSION_STEP} )); do
    echo "===================================================================================================================================================="
    echo "Testing with square matrix of dimension $MATRIX_DIMENSION and $MPI_PROCESSES number of MPI processes"
    echo

    time ${SERIAL_MULTIPLYER} ${MATRIX_DIMENSION}
    echo
    echo
    time mpirun --oversubscribe -np ${MPI_PROCESSES} ${PARALLEL_MULTIPLYER} ${MATRIX_DIMENSION}

    echo
    echo
done

echo "Test finished!"
