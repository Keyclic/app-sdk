//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksOperator {
  /// Returns a new [OperationLinksOperator] instance.
  OperationLinksOperator({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksOperator] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksOperator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksOperator(
      href: json[r'href'],
      iriTemplate:
          OperationLinksOperatorIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the operator associated to the given operation.
  String? href;

  OperationLinksOperatorIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksOperator &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksOperator> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksOperator>[];
    }
    return json
        .map((value) {
          return OperationLinksOperator.fromJson(value);
        })
        .whereType<OperationLinksOperator>()
        .toList();
  }

  static Map<String, OperationLinksOperator> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksOperator>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OperationLinksOperator?>(
            key, OperationLinksOperator.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationLinksOperator>;
  }

  // maps a json object with a list of OperationLinksOperator-objects as value to a dart map
  static Map<String, List<OperationLinksOperator>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OperationLinksOperator>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OperationLinksOperator.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksOperator[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
