# Public: Revert to normal scrolling
#
# Examples
#
# include osx::global::revert_to_normal_scrolling
class osx::global::revert_to_normal_scrolling {
  boxen::osx_defaults { 'Revert back to normal scrolling':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.swipescrolldirection',
    value  => false,
    type   => bool,	
    user   => $::boxen_user;
  }
}
