# Public: Sets key repeat-rate & repeat delay
#
# Examples
#
#   class {'osx::global::key_repeat':
#     rate => 0,
#     delay => 1, 
#   }
class osx::global::key_repeat(
  $rate = 0, 
  $delay = 1,
) {
  boxen::osx_defaults { 'key repeat rate':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'KeyRepeat',
    value  => $rate,
    type   => 'int',
    user   => $::boxen_user;
  }
  boxen::osx_defaults { 'key repeat delay':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'InitialKeyRepeat',
    value  => $delay,
    type   => 'int',
    user   => $::boxen_user;
  }
}
