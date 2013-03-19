# Public: Expand save panel by default
#
# Examples
#
# include osx::global::expand_save_dialog
class osx::global::expand_save_dialog {
  boxen::osx_defaults { 'Expand save panel by default':
    user   => $::boxen_user,
    key    => 'NSNavPanelExpandedStateForSaveMode',
    domain => 'NSGlobalDomain',
    value  => true;
  }
}
