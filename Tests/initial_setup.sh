#!/bin/bash

#Modify this file as you wish in order to benchmark the serial and parallel matrix multiplication

export MATRIX_DIMENSION_START=10
export MAX_MATRIX_DIMENSION=100
export MATRIX_DIMENSION_STEP=10

export PPC_SERIAL_RESULT_PATH=/path/to/serial/results
export SERIAL_MULTIPLYER=/path/to/serial/runner

export PPC_PARALLEL_RESULT_PATH=/path/to/parallel/results
export PARALLEL_MULTIPLYER=/path/to/parallel/runner