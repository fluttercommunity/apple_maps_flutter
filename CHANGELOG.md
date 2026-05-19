# Changelog

## 1.6.0

* Performance: every `mapView.annotations.filter { ... }` lookup in
  `AnnotationController` is now O(1) against a maintained `[id: FlutterAnnotation]`
  index on `AppleMapController`. `annotationsToChange` and
  `annotationsIdsToRemove` drop from O(N²) to O(N); `annotationsIdsToRemove`
  now uses a single batched `mapView.removeAnnotations(_:)` call.
  `getNextAnnotationZIndex` / `isAnnotationInFront` use a tracked max
  zIndex instead of a sort. Large annotation sets (5k+) no longer hang on
  filter/update operations.
* `_AnnotationUpdates.from` now skips annotations in `annotationsToChange`
  whose content is equal to the previous version. The previous
  implementation included every annotation whose id was in both sets,
  serializing thousands of unchanged annotations across the platform
  channel on every diff.

## 1.5.0

* Added `Annotation.clusteringIdentifier`. Annotations sharing the same
  identifier are aggregated by MapKit into a single `MKClusterAnnotation`
  natively (iOS 11+), avoiding the platform-channel cost of clustering
  in Dart. Tapping a cluster animates the camera to the member bounding
  box. Leave the field null to opt out per-annotation.

## 1.4.0

* Flutter 3.27.1 compatibility, replace `ui.hash*` with `Object.hash*

## 1.3.0

* Animate marker position changes instead of removing and re-adding
* Fix Fatal error: Attempted to read an unowned reference but the object was already deallocated
* Fixed an issue where onCameraMove was not invoked by double-tapping
* Added insetsLayoutMarginsFromSafeArea

## 1.2.0

* Added a `markerAnnotationWithHue()` and `pinAnnotationWithHue()` method to allow custom marker/pin colors

## 1.1.0

* Added Annotation zIndex
* Added posibility to take snapshots of the map

## 1.0.3

* Fixes an issue where mapController.moveCamera would animate the camera transition
* To animate a camera movement, mapController.animateCamera should be used instead

## 1.0.2

* Removed Android folder to fix build failures

## 1.0.1

* Fixes memory leak
* Adds ability to take snapshots of the map
## 1.0.0

Thanks to @jonbhanson
* Adds null safety.
* Refreshes the example app.
* Updates .gitignore and removes files that should not be tracked.

## 0.1.4

* Animate to bounds was added. (Thanks to @nghiashiyi)
* Fixed an issue where the user location was only displayed in `authorizationInUse` status. (Thanks to @zgosalvez)

* minor fixes

## 0.1.3

* Thanks to @maxiundtesa the getter for the current zoomLevel was added
* iOS build failure for Flutter modules was fixed

## 0.1.2+5

* Fixed build failure
* Added anchor param to Annotation
* Added missing comparison of Overlay coordinates, which caused
  Circles, Annotations, Polylines and Ploygons to not update correctly
  on coordinate changes.

## 0.1.2+4

* Added configurable Anchor for infoWindows

## 0.1.2+3

* Fixed the offset of custom markers

## 0.1.2+2

* Fixed the onTap event for Annotation Callouts

## 0.1.2+1

* Added custom annotation icons from byte data
* Fixed scaling of icons from assets => see: https://flutter.dev/docs/development/ui/assets-and-images#declaring-resolution-aware-image-assets

## 0.1.2

* Annotation rework:
   * onTap for InfoWindow added
   * Multiline InfoWindow subtitle support
   * Overall Annotation handling refactored
   * Correct UserTracking Button added

## 0.1.1+2

* Fixed map freezing when setState is being called

## 0.1.1+1

* Fixed Polygon and Circle Tap events.

## 0.1.1

* Added markerAnnotation as selectable annotation type.

## 0.1.0

* Added ability to place circles on the map.

## 0.0.7

* Added ability to place polygons on the map.

## 0.0.6+4

* Fixed build issues

## 0.0.6+3

* Fixes issue #6, location permission is only requested if it's actually used.

## 0.0.6+2

* Converted iOS code to swift 5.

## 0.0.6+1

* Changed annotation initialisation, fixes custom annotation icons not showing up on the map.

## 0.0.6

* Added ability to add padding to the map

## 0.0.5

* Added ability to place polylines.

## 0.0.4

* Fixed error when updating Annotations on map.

## 0.0.3

* Added getter for visible map region.

## 0.0.2

* Added zoomBy functionality.
* Added setter for min and max zoom levels.

## 0.0.1

* Initial release.
