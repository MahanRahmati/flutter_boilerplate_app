# Flutter boilerplate app

This is a boilerplate project for Flutter that provides a starting point for building a new application. It includes a basic project structure, common dependencies, and some sample code to help you get started.

## Getting Started

To use this boilerplate, simply clone the repository and run flutter pub get to install the dependencies:

```
git clone https://github.com/MahanRahmati/flutter_boilerplate_app.git
cd flutter_boilerplate_app
flutter pub get
```

You can then open the project in your favorite IDE or text editor and start building your application.

## Dependencies

This boilerplate includes several common dependencies that you may find useful when building your application:

| Packages                                                                 | Description                                     |
| :----------------------------------------------------------------------- | :---------------------------------------------- |
| [riverpod](https://pub.dev/packages/riverpod/)                           | State Manager                                   |
| [go_router](https://pub.dev/packages/go_router/)                         | Routing                                         |
| [go_router_builder](https://pub.dev/packages/go_router_builder/)         | Routing                                         |
| [hive](https://pub.dev/packages/hive/)                                   | Storage                                         |
| [intl](https://pub.dev/packages/intl/)                                   | Internationalization and Localization           |
| [arna_logger](https://pub.dev/packages/arna_logger/)                     | Logger                                          |
| [flutter_svg](https://pub.dev/packages/flutter_svg/)                     | Draw SVG files                                  |
| [cached_network_image](https://pub.dev/packages/cached_network_image/)   | Load and cache network images                   |
| [freezed](https://pub.dev/packages/freezed/)                             | Code generation for models                      |
| [json_serializable](https://pub.dev/packages/json_serializable/)         | Code generation for converting to and from JSON |
| [flutter_native_splash](https://pub.dev/packages/flutter_native_splash/) | Native splash screen                            |
| [arna_web_service](https://pub.dev/packages/arna_web_service)            | Web service                                     |
| [slang](https://pub.dev/packages/slang)                                  | Internationalization and Localization           |
| [derry](https://pub.dev/packages/derry)                                  | Script manager                                  |

You can add or remove dependencies as needed for your specific use case.

## Project Structure

The project structure is organized into several directories:

    lib: Contains the main part of source code for your application.
    packages: Contains everything else that your application needs.

## Special

### gitignore

Remove the following lines from .gitignore:

```
/android/
/ios/
/linux/
/macos/
/web/
/windows/
.metadata
```

### Models

To generate model files, execute the following command: `derry models`

### Native Splash

To create native splash screen, execute the following command: `derry native_splash`

### Localization

To generate localization files, execute the following command: `derry slang`

### Providers

To generate provider files, execute the following command: `derry providers`

### Router

To generate router files, execute the following command: `derry router`

## License

This boilerplate is [BSD 3-Clause licensed](./LICENSE).

## Contributing

Contributions are welcome! If you find a bug or want to add a new feature, please open an issue or submit a pull request.

## TODO

### Documentation:

- [ ] app_apis
- [ ] app_constants
- [ ] app_localizations
- [ ] app_models
- [ ] app_widgets
- [ ] screen_home
- [ ] service_storage
