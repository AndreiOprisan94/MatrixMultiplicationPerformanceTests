#!/bin/bash

MPI_PROCESSES=7
MATRIX_DIMENSION=10

echo "Testing with square matrix of dimension $MATRIX_DIMENSION and $MPI_PROCESSES number of MPI processes"
echo

time $SERIAL_MULTIPLYER ${MATRIX_DIMENSION}
echo
echo
time mpirun --oversubscribe -np ${MPI_PROCESSES} $PARALLEL_MULTIPLYER ${MATRIX_DIMENSION}

echo "Test finished!"