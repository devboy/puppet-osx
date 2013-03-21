# Public: Disables key press and hold popover
#
# Examples
#
# include osx::global::disable_key_press_and_hold
class osx::global::disable_key_press_and_hold {
  boxen::osx_defaults { 'Disable key press and hold popover':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'ApplePressAndHoldEnabled',
    value  => false,
    user   => $::boxen_user;
  }
}
