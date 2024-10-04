class AppConfig {
  final String appName;
  final String apiUrl;
  final String environment;

  AppConfig({
    required this.appName,
    required this.apiUrl,
    required this.environment,
  });

  static late AppConfig instance;

  static void init({required String environment}) {
    switch (environment) {
      case 'dev':
        instance = AppConfig(
          appName: 'MyApp Dev',
          apiUrl: 'https://dev-api.example.com',
          environment: 'dev',
        );
        break;
      case 'staging':
        instance = AppConfig(
          appName: 'MyApp Staging',
          apiUrl: 'https://staging-api.example.com',
          environment: 'staging',
        );
        break;
      case 'prod':
        instance = AppConfig(
          appName: 'MyApp',
          apiUrl: 'https://api.example.com',
          environment: 'prod',
        );
        break;
      default:
        throw Exception('Unknown environment: $environment');
    }
  }
}
