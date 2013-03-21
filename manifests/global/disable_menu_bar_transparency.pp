# Public: Disables menu bar transparency
#
# Examples
#
# include osx::global::disable_menu_bar_transparency
class osx::global::disable_menu_bar_transparency {
  boxen::osx_defaults { 'Disables menu bar transparency':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'ApplePressAndHoldEnabled',
    value  => false,
    user   => $::boxen_user;
  }
}
