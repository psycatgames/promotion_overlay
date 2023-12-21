import 'package:promotion_overlay_platform_interface/promotion_overlay_platform_interface.dart';

/// The position of the overlay on the screen. This always should have the same values as can be found in the SKOverlay.Position enum (https://developer.apple.com/documentation/storekit/skoverlay/position).
enum PromotionOverlayPosition {
  bottom,
  bottomRaised,
}

/// A class that exposes the SKOverlay API on iOS and TODO: Android implementation (on Android)
class PromotionOverlay {
  static PromotionOverlayPlatform get _store =>
      PromotionOverlayPlatform.instance;

  /// The iTunes identifier of the recommended app. (iOS)
  final String appIdentifier;

  /// A token you use to represent an ad campaign and measure its effectiveness. (iOS)
  final String? campaignToken;

  /// A token that represents the provider of an app promotion campaign, and that you use to measure the campaign’s effectiveness. (iOS)
  final String? providerToken;

  /// A Boolean value that indicates whether the overlay is dismissed when the user switches to another app. (iOS)
  final bool dismissOnBackground;

  /// The position of the overlay on the screen.
  final PromotionOverlayPosition position;

  /// Creates a new PromotionOverlay instance
  factory PromotionOverlay(
    String appIdentifier, {
    String? campaignToken,
    String? providerToken,
    bool dismissOnBackground = true,
    PromotionOverlayPosition position = PromotionOverlayPosition.bottom,
  }) {
    return PromotionOverlay._internal(
      appIdentifier,
      campaignToken,
      providerToken,
      dismissOnBackground,
      position,
    );
  }

  PromotionOverlay._internal(
    this.appIdentifier,
    this.campaignToken,
    this.providerToken,
    this.dismissOnBackground,
    this.position,
  );

  /// Shows the promotion overlay with [appIdentifier] using SKOverlay (on iOS)
  /// Returns true if the overlay was shown, false otherwise
  Future<bool> show() {
    return _store.show(
      this.appIdentifier,
      this.campaignToken,
      this.providerToken,
      this.dismissOnBackground,
      this.position.index,
    );
  }

  /// Dismisses the promotion overlay
  Future<bool> dismiss() {
    return _store.dismiss();
  }
}
