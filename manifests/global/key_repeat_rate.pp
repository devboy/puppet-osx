# Public: Sets key repeat-rate
#
# Examples
#
#   class {'osx::global::key_repeat_rate':
#     rate => 0.0, 
#   }
class osx::global::key_repeat_rate($rate = 0.0) {
  boxen::osx_defaults { 'key repeat rate':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'KeyRepeat',
    value  => $rate,
    user   => $::boxen_user;
  }
}
