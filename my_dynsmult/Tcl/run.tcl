###############################################################
###   Main flow - Do Not Edit
###############################################################

#### Run Synthesis on any modules requiring synthesis
if {[llength $modules] > 0} {
   foreach module $modules {
      if {[get_attribute module $module synth]} {
       synth $module
    }
  }
}

#### Run Top-Down implementation before OOC
if {[llength $implementations] > 0} {
   foreach impl $implementations {
      if {[get_attribute impl $impl impl] && [get_attribute impl $impl td.impl]} {
         #Override directives if directive file is specified
         if {[info exists useDirectives]} {
            puts "#HD: Overriding directives for implementation $impl"
            set_directives impl $impl
         }
         impl $impl
      }
   }
}

#### Run OOC Implementations
if {[llength $ooc_implementations] > 0} {
   foreach ooc_impl $ooc_implementations {
      if {[get_attribute ooc $ooc_impl impl]} {
         #Override directives if directive file is specified
         if {[info exists useDirectives]} {
            puts "#HD: Overriding directives for implementation $ooc_impl"
            set_directives ooc $ooc_impl
         }
         ooc_impl $ooc_impl
      }
   }
}

#### Run PR configurations
if {[llength $configurations] > 0} {
   sort_configurations
   foreach config $configurations {
      if {[get_attribute config $config impl]} {
         #Override directives if directive file is specified
         if {[info exists useDirectives]} {
            puts "#HD: Overriding directives for configuration $config"
            set_directives config $config
         }
         pr_impl $config
      }
   }
}

#### Run Assembly and Flat implementations
if {[llength $implementations] > 0} {
   foreach impl $implementations {
      if {[get_attribute impl $impl impl] && ![get_attribute impl $impl td.impl]} {
         #Override directives if directive file is specified
         if {[info exists useDirectives]} {
            puts "#HD: Overriding directives for implementation $impl"
            set_directives impl $impl
         }
         impl $impl
      }
   }
}

#### Run PR verify 
if {[llength $configurations] > 1} {
   verify_configs $configurations
}

#### Genearte PR bitstreams 
if {[llength $configurations] > 0} {
   generate_pr_bitstreams $configurations
}

close $RFH
close $CFH
close $WFH
