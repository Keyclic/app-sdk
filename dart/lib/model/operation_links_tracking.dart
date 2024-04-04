//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksTracking {
  /// Returns a new [OperationLinksTracking] instance.
  OperationLinksTracking({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksTracking] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksTracking? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OperationLinksTracking(
      href: json[r'href'],
      iriTemplate:
          OperationLinksTrackingIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the tracking associated to the given operation.
  String? href;

  OperationLinksTrackingIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksTracking &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksTracking> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksTracking>[];
    }

    return json.fold(<OperationLinksTracking>[],
        (List<OperationLinksTracking> previousValue, element) {
      final OperationLinksTracking? object =
          OperationLinksTracking.fromJson(element);
      if (object is OperationLinksTracking) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksTracking> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksTracking>{};
    }

    return json.entries.fold(<String, OperationLinksTracking>{},
        (Map<String, OperationLinksTracking> previousValue, element) {
      final OperationLinksTracking? object =
          OperationLinksTracking.fromJson(element.value);
      if (object is OperationLinksTracking) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksTracking-objects as value to a dart map
  static Map<String, List<OperationLinksTracking>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksTracking>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksTracking>>(
          key, OperationLinksTracking.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinksTracking[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
