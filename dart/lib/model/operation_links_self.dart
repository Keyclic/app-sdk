//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksSelf {
  /// Returns a new [OperationLinksSelf] instance.
  OperationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksSelf(
      href: json[r'href'],
      iriTemplate: OperationLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given operation.
  String? href;

  OperationLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksSelf>[];
    }
    return json
        .map((value) {
          return OperationLinksSelf.fromJson(value);
        })
        .whereType<OperationLinksSelf>()
        .toList();
  }

  static Map<String, OperationLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksSelf>{};
    }

    final map = json.map((key, value) => MapEntry<String, OperationLinksSelf?>(
        key, OperationLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationLinksSelf>;
  }

  // maps a json object with a list of OperationLinksSelf-objects as value to a dart map
  static Map<String, List<OperationLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OperationLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OperationLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
