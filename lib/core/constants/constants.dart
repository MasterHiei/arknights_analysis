import 'package:flutter/material.dart';

class Constants {
  const Constants._();

  //* System Settings
  static const appName = 'Arknights Analysis';

  static const dbName = 'arknights_analysis.db';

  static const dbVersion = 3;

  static const defaultWindowSize = Size(1920, 1080);

  static const minWindowSize = Size(1280, 720);

  //* Runtime Settings

  static const pageSize = 10;

  static const debouceDuration = Duration(milliseconds: 300);

  static const minRequestInterval = Duration(minutes: 5);

  static const persistenceFileName = 'arknights_analysis_data.json';

  //* URLs
  static const projectUrl = 'https://github.com/MasterHiei/arknights_analysis';

  static const licenseUrl =
      'https://github.com/MasterHiei/arknights_analysis/blob/master/LICENSE.md';

  static const gameDataRepoUrl =
      'https://github.com/Kengxxiao/ArknightsGameData';

  static const prts = 'https://prts.wiki';

  static const charAvatarBaseUrl =
      'https://web.hycdn.cn/arknights/is/assets/img/static/avatars';

  static const asBaseUrl = 'https://as.hypergryph.com';

  static const akBaseUrl = 'https://ak.hypergryph.com';

  static const gameDataApiBaseUrl =
      'https://api.github.com/repos/Kengxxiao/ArknightsGameData';

  static const gameDataRawBaseUrl =
      'https://raw.gitmirror.com/Kengxxiao/ArknightsGameData/master/zh_CN/gamedata';

  static const repoDataApiBaseUrl =
      'https://api.github.com/repos/MasterHiei/arknights_analysis';

  static const akLoginPage = 'https://ak.hypergryph.com/user/login';

  static const akHomePageOfficial = 'https://ak.hypergryph.com/user/home';

  static const akHomePageBilibili =
      'https://ak.hypergryph.com/user/bilibili/home';

  static const akHomePageBilibiliRedirect =
      'https://ak.hypergryph.com/user/bilibili/home?auth=bilibili';

  static const asGetTokenOfficial =
      'https://web-api.hypergryph.com/account/info/hg';

  static const asGetTokenBilibili =
      'https://web-api.hypergryph.com/account/info/ak-b';
}
