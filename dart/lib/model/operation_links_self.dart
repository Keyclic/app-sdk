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
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : OperationLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
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

    return json.fold(<OperationLinksSelf>[],
        (List<OperationLinksSelf> previousValue, element) {
      final OperationLinksSelf? object = OperationLinksSelf.fromJson(element);
      if (object is OperationLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksSelf>{};
    }

    return json.entries.fold(<String, OperationLinksSelf>{},
        (Map<String, OperationLinksSelf> previousValue, element) {
      final OperationLinksSelf? object =
          OperationLinksSelf.fromJson(element.value);
      if (object is OperationLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksSelf-objects as value to a dart map
  static Map<String, List<OperationLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksSelf>>(
          key, OperationLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
