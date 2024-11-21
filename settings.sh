#!/bin/bash

#################
# Initial setup #
#################
# Root directory of current project, same path as this script
export ROOT_DIR=$( dirname $( realpath $BASH_SOURCE[0]} ) )
export PROJECT_NAME=FSSD

# Check if Vivado is in path
if ! command -v vivado &> /dev/null; then
    echo "[Error] Can't find Vivado in PATH!" >&2 ;
fi

#######
# RTL #
#######
export RTL_ROOT=${ROOT_DIR}/rtl
export RTL_HEADERS=${RTL_ROOT}/svh
export RTL_PKG=${RTL_ROOT}/pkg
export RTL_SRC=${RTL_ROOT}/src

#######
# TCL #
#######
export TCL_ROOT=${ROOT_DIR}/tcl
export TCL_BUILD_DIR=${TCL_ROOT}/build
export TCL_BUILD_IPS_DIR=${TCL_BUILD_DIR}/ips

#######
# IPs #
#######
export IPS_ROOT=${ROOT_DIR}/ips


#######################
# Board Configuration # 
#######################
# Current support is for Xilinx/AMD Alveo Boards {au250, au280(TBD), au50(TBD)}
BOARD_CONFIG=$1

if [[ ${BOARD_CONFIG} == "au280" ]]; then
    # TBD
    echo "[Error] Board Configuration ${BOARD_CONFIG} unsupported!" >&2 ; 
elif [[ ${BOARD_CONFIG} == "au50" ]]; then
    # TBD
    echo "[Error] Board Configuration ${BOARD_CONFIG} unsupported!" >&2 ; 
else
    # Alveo  250
    export XILINX_PART_NUMBER=xcu250-figd2104-2L-e
    export XILINX_BOARD_PART=xilinx.com:au250:part0:1.3
    export XILINX_HW_DEVICE=xcu250
    export BOARD=au250
fi

##########
# Vivado #
##########

#export XILINX_SYNTH_XDC_ROOT=${XILINX_SYNTH_ROOT}/constraints

# Hardware Server Host
export XILINX_HW_SERVER_HOST=127.0.0.1
export XILINX_HW_SERVER_PORT=3121
# NOTE: this is device-specific
# export XILINX_HW_SERVER_FPGA_PATH=xilinx_tcf/Digilent/210292B17F3DA
# Use wildcard instead
export XILINX_HW_SERVER_FPGA_PATH=xilinx_tcf/Digilent/*



