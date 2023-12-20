# Promotion Overlay plugin

Wraps platform-specific persistent storage for simple data
(SKOverlay on iOS and macOS, TODO on Android, etc.).
Data may be persisted to disk asynchronously,
and there is no guarantee that writes will be persisted to disk after
returning, so this plugin must not be used for storing critical data.

|             | Android | iOS   | Linux | macOS  | Web | Windows     |
|-------------|---------|-------|-------|--------|-----|-------------|
| **Support** |    -    | 14.0+ |   -   |  14.0+ |  -  |      -      |

## Usage
To use this plugin, add `promotion_overlay` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

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