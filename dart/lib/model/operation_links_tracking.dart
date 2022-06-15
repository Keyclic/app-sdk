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
  static OperationLinksTracking? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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
    return json
        .map((value) {
          return OperationLinksTracking.fromJson(value);
        })
        .whereType<OperationLinksTracking>()
        .toList();
  }

  static Map<String, OperationLinksTracking> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksTracking>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OperationLinksTracking?>(
            key, OperationLinksTracking.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationLinksTracking>;
  }

  // maps a json object with a list of OperationLinksTracking-objects as value to a dart map
  static Map<String, List<OperationLinksTracking>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OperationLinksTracking>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OperationLinksTracking.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksTracking[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
