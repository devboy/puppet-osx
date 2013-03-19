# Public: Do not create .DS_Store on network shares
#
# Examples
#
# include osx::dashboard::no_network_dsstores
class osx::dashboard::no_network_dsstores {
  boxen::osx_defaults { 'Do not create .DS_Store on network shares':
    key    => 'DSDontWriteNetworkStores',
    domain => 'com.apple.dashboard',
    value  => 'true';
  }
}
