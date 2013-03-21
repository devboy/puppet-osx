# Public: Sets key repeat-rate
#
# Examples
#
#   class {'osx::global::key_repeat_rate':
#     rate => 0, 
#   }
class osx::global::key_repeat_rate($rate = 0) {
  boxen::osx_defaults { 'key repeat rate':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'KeyRepeat',
    value  => $rate,
    type   => 'int',
    user   => $::boxen_user;
  }
}
