# Promotion Overlay plugin

[![pub](https://img.shields.io/badge/pub-v1.0.2-blue)](https://pub.dev/packages/promotion_overlay)
[![pub points](https://img.shields.io/pub/points/promotion_overlay?logo=dart&label=pub%20points )](https://pub.dev/packages/promotion_overlay)
[![package publisher](https://img.shields.io/badge/publisher-PsyCat%20Games-%23ff1b3d)](https://pub.dev/publishers/psycatgames.com)

Promotion Overlay is a Flutter plugin for iOS and macOS, with future support planned for Android. It shows a native promotional overlay using `SKOverlay`, enabling users to install advertised apps directly in the background without navigating to the App Store. It includes campaign tracking and control over the overlay's position and visibility.

|             | Android | iOS   | Linux | macOS  | Web | Windows     |
|-------------|---------|-------|-------|--------|-----|-------------|
| **Support** |    -    | 14.0+ |   -   |  14.0+ |  -  |      -      |

## Usage
To use this plugin, add `promotion_overlay` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

<img src="https://raw.githubusercontent.com/psycatgames/promotion_overlay/main/assets/screenshot.jpeg" alt="drawing" width="160"/>

### Instantiating the PromotionOverlay object
You must then specify the following parameters:

- `appIdentifier` (required, The iTunes identifier of the recommended app. (iOS))
- `campaignToken` (optional, A token you use to represent an ad campaign and measure its effectiveness. (iOS))
- `providerToken` (optional, A token that represents the provider of an app promotion campaign, and that you use to measure the campaign’s effectiveness. (iOS))
- `dismissOnBackground` (optional, default: true, A Boolean value that indicates whether the overlay is dismissed when the user switches to another app. (iOS))
- `position` (optional, default: .bottom, The position of the overlay on the screen.)

### How to use
<?code-excerpt "readme_excerpts.dart (Read)"?>
```dart
// Create an overlay instance
final PromotionOverlay promotionOverlay = PromotionOverlay('identifier',
        campaignToken: 'campaignToken', providerToken: 'providerToken');

// Show the promotion overlay
final promotionOverlay = await promotionOverlay.show();
// Dismiss the promotion overlay
promotionOverlay.dismiss();
```

### Testing

This is still todo.

### Overlay by platform

| Platform | Location |
| :--- | :--- |
| Android | - |
| iOS | SKOverlay |
| Linux | - |
| macOS | SKOverlay |
| Web | - |
| Windows | - |