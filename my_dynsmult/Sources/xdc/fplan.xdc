
####################################################################################
# Generated by Vivado 2019.1 built on 'Fri May 24 14:49:42 MDT 2019' by 'xbuild'
# Command Used: write_xdc ./Sources/xdc/fplan.xdc
####################################################################################


####################################################################################
# Constraints from file : 'xpm_memory_xdc.tcl'
####################################################################################

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory

# Scoped constraints for xpm_memory


# User Generated miscellaneous constraints 

set_property HD.RECONFIGURABLE true [get_cells design_1_i/mysmult_static_0/U0/mysmult_static_v1_0_S00_AXI_inst/th/th/ji/rP]

# User Generated physical constraints 

create_pblock pblock_rP
add_cells_to_pblock [get_pblocks pblock_rP] [get_cells -quiet [list design_1_i/mysmult_static_0/U0/mysmult_static_v1_0_S00_AXI_inst/th/th/ji/rP]]
resize_pblock [get_pblocks pblock_rP] -add {SLICE_X36Y92:SLICE_X43Y99}

# Vivado Generated miscellaneous constraints 

#revert back to original instance
current_instance -quiet
