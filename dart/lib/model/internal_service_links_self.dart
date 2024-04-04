//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceLinksSelf {
  /// Returns a new [InternalServiceLinksSelf] instance.
  InternalServiceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [InternalServiceLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return InternalServiceLinksSelf(
      href: json[r'href'],
      iriTemplate:
          InternalServiceLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given internalservice.
  String? href;

  InternalServiceLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<InternalServiceLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceLinksSelf>[];
    }

    return json.fold(<InternalServiceLinksSelf>[],
        (List<InternalServiceLinksSelf> previousValue, element) {
      final InternalServiceLinksSelf? object =
          InternalServiceLinksSelf.fromJson(element);
      if (object is InternalServiceLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServiceLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceLinksSelf>{};
    }

    return json.entries.fold(<String, InternalServiceLinksSelf>{},
        (Map<String, InternalServiceLinksSelf> previousValue, element) {
      final InternalServiceLinksSelf? object =
          InternalServiceLinksSelf.fromJson(element.value);
      if (object is InternalServiceLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServiceLinksSelf-objects as value to a dart map
  static Map<String, List<InternalServiceLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServiceLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServiceLinksSelf>>(
          key, InternalServiceLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InternalServiceLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
