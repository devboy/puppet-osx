# Public: Sets mouse-cursor size
#
# Examples
#
#   class {'osx::universal_access::cursor_size':
#     zoom => 1.0, 
#  }
class osx::universal_access::cursor_size($zoom = 1.0) {
  boxen::osx_defaults { 'cursor size':
    ensure => present,
    user   => $::boxen_user,
    domain => 'com.apple.universalaccess',
    key    => 'mouseDriverCursorSize',
    value  => $zoom;
  }
}
