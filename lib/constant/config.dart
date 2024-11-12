enum Flavor { dev, production, staging }

class AppConfig {
  late Flavor flavor;

  AppConfig({this.flavor = Flavor.production});

  static AppConfig appConfig = AppConfig.create();

  factory AppConfig.create({Flavor flavor = Flavor.production}) {
    return appConfig = AppConfig(flavor: flavor);
  }
}
