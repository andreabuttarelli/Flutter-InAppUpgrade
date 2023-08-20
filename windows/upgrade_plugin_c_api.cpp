#include "include/upgrade_manager/upgrade_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "upgrade_plugin.h"

void UpgradePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  upgrade::UpgradePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
