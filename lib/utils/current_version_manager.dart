import 'package:upgrade_manager/models/appcast_item.dart';
import 'package:upgrade_manager/models/version.dart';

class CurrentVersionManager {
  static void load(String version, bool crashIfNoLegalConfigFile,
      void Function(AppcastItem? version) onDone) {
    onDone.call(
        AppcastItem(version: Version.parse(version), installersConfig: []));
  }
}
