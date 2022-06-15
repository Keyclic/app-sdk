//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksFeedback {
  /// Returns a new [OperationLinksFeedback] instance.
  OperationLinksFeedback({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksFeedback] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksFeedback? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksFeedback(
      href: json[r'href'],
      iriTemplate:
          OperationLinksFeedbackIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the feedback associated to the given operation.
  String? href;

  OperationLinksFeedbackIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksFeedback &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksFeedback> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksFeedback>[];
    }
    return json
        .map((value) {
          return OperationLinksFeedback.fromJson(value);
        })
        .whereType<OperationLinksFeedback>()
        .toList();
  }

  static Map<String, OperationLinksFeedback> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksFeedback>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OperationLinksFeedback?>(
            key, OperationLinksFeedback.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationLinksFeedback>;
  }

  // maps a json object with a list of OperationLinksFeedback-objects as value to a dart map
  static Map<String, List<OperationLinksFeedback>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OperationLinksFeedback>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OperationLinksFeedback.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksFeedback[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
