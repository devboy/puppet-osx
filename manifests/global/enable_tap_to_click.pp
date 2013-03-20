# Public: Enables tap to click on trackpad
#
# Examples
#
#   include osx::global::enable_tap_to_click
class osx::global::enable_tap_to_click {

  boxen::osx_defaults { 'Enable tap to click on bluetooth trackpad':
    ensure => present,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'Clicking',
    value  => true,
    type   => bool,
    user   => $::boxen_user;
  }

  boxen::osx_defaults { 'Enable tap to click on login screen':
    ensure => present,
    # host   => 'currentHost',
    domain => 'NSGlobalDomain',
    key    => 'Clicking',
    value  => 1,
    user   => $::boxen_user;
  }

  boxen::osx_defaults { 'Enable tap to click for user':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'Clicking',
    value  => 1,
    user   => $::boxen_user;
  }
}
