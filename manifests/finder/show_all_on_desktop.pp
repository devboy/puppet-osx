# Public: Shows all media/drives on desktop
#
# Examples
#
# include osx::finder::show_all_on_desktop
class osx::finder::show_all_on_desktop {
  include osx::finder::show_hard_drives_on_desktop
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop
}
