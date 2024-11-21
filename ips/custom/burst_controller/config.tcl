# Author: Stefano Mercogliano  <stefano.mercogliano@unina.it>
# Description: create a custom IP using rtl sources

# Define the top_module name (NB: IP Name must be different from the top_module name)
set top_module _$::env(IP_NAME)

# RTL directories path
set rtl_top_dir $::env(RTL_SRC)/ssd_controller/burst_controller
set rtl_svh_dir $::env(RTL_HEADERS)
set rtl_pkg_dir $::env(RTL_PKG)

# Headers 
set axi_macro_header ${rtl_svh_dir}/fssd_axi.svh

# Packages

# Sources
set top_module_src ${rtl_top_dir}/${top_module}.sv

# Create source files list
set src_file_list {}

lappend src_file_list ${axi_macro_header}
lappend src_file_list ${top_module_src}

# Package the IP with the specified file list and top module
source $::env(TCL_BUILD_IPS_DIR)/package_ip.tcl
