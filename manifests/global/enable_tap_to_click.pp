# Public: Enables tap to click on trackpad
#
# Examples
#
#   include osx::global::enable_tap_to_click
class osx::global::enable_tap_to_click {
  boxen::osx_defaults { 'Enable tap to click on tackpad':
    ensure => present,
    host   => 'currentHost',
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.tapBehavior',
    value  => 1,
    type   => int,
    user   => $::boxen_user;
  }
}
