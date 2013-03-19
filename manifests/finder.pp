# Public: Restarts Finder
#
# Examples
#
#   notify => Exec['killall Finder']
class osx::finder {
  exec { 'killall Finder':
    refreshonly => true
  }
}
