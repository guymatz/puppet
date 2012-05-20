# Class: cluster
#
# This module manages cluster
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class cluster {

  # Only run on RedHat derived systems.
  case $::osfamily {
    RedHat: { include cluster::redhat }
    default: {
      fail("This cluster module only supports Red Hat-based systems.")
    }
  }
} # class cluster
