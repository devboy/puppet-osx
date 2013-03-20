# Public: Show hidden files in finder
#
# Examples
#
# include osx::finder::show_hidden_files
class osx::finder::show_hidden_files {
  include osx::finder

  boxen::osx_defaults { 'Show hidden files in finder':
    ensure => present,
    domain => 'com.apple.finder',
    key    => 'AppleShowAllFiles',
    value  => YES,
    user   => $::boxen_user,
    notify => Exec['killall Finder'];
  }
}
