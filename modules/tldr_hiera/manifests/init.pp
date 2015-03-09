# == Class: tldr_hiera
#
# Simple example showing the use of Hiera in a puppet module. The module writes
# the below parameters to a simple text file in /tmp.
#
# See the markdown included at the top of the project for further details,
# including instructions on how to use.
#
# === Parameters
#
# Keep in mind that for this example, it is encouraged that all parameters be
# defined in Hiera, so that the list below is simply a reference of what you
# should be using. Keep in mind that if you are downloading this from the github
# project, these should already be set up for you - simply take a look at the
# YAML and eYAML files in /puppet/hieradata.
#
# Remember that for parameters to be looked up automatically, they need to be
# within the class's namespace - ie: tldr_hiera::key.
#
# [*tldr_string*]
#   Example of a string value in Hiera.
#
# [*tldr_array*]
#   Example of an array in Hiera.
#
# [*tldr_hash*]
#   Example of a hash in Hiera.
#
# [*tldr_encstring*]
#   Example of an encrypted string in Hiera, using eYAML.
#
# === Authors
#
# Chris Marchesi <chrism@vancluevertech.com>
#
# === Copyright
#
# Copyright 2015 Vancluever Internet Services. MIT license (see license at top
# of repo).
#
class tldr_hiera (
  $tldr_string = 'Not found!',
  $tldr_array = [ 'Not found!' ],
  $tldr_hash = { 'tldr_key' => 'Not found!' },
  $tldr_encstring = 'Not found!'
  ) {

  # File resource where Hiera values get written to
  file { '/tmp/tldr_hiera_out.md':
    content => template('tldr_hiera/tldr_hiera_out.md.erb')
   }
}
