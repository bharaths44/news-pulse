# GetX Clean Architecture Flutter Project

This project is a Flutter application that uses the GetX state management solution and follows the principles of Clean Architecture for simple news apllication called "NewsPulse"

### Project Structure

The project is structured into the following directories:

- `lib/` - Contains the Dart source code for the Flutter application.
    - `config.dart` - Configuration settings for the application.
    - `core/` - Core functionality that is used throughout the application.
    - `domain/` - Domain entities and use cases.
    - `infrastructure/` - External interfaces such as network requests and local storage.
    - `presentation/` - UI and state management for the application.
- `assets/` - Contains assets like images, fonts, and localization files.
- `android/` and `ios/` - Platform-specific configuration and code.
- `test/` - Unit tests for the application.

### Getting Started

1. Clone the repository.
2. Run `flutter pub get` to fetch the project dependencies.
3. Run `flutter run` to start the application.

### Packages Used
- [cached_network_image](https://pub.dev/packages/cached_network_image)
- [dio ](https://pub.dev/packages/dio)
- [flutter_svg ](https://pub.dev/packages/flutter_svg)
- [font_awesome_flutter ](https://pub.dev/packages/font_awesome_flutter)
- [get](https://pub.dev/packages/get)
- [http](https://pub.dev/packages/http)
- i[ntl](https://pub.dev/packages/intl)
- [url_launcher](https://pub.dev/packages/url_launcher)

### Image sources
- [SVG repo](https://www.svgrepo.com/)
- [BG JAR](https://bgjar.com/)