//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureLinksSelf {
  /// Returns a new [ProcedureLinksSelf] instance.
  ProcedureLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ProcedureLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksSelf(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : ProcedureLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given procedure.
  String? href;

  ProcedureLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ProcedureLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProcedureLinksSelf>[];
    }

    return json.fold(<ProcedureLinksSelf>[],
        (List<ProcedureLinksSelf> previousValue, element) {
      final ProcedureLinksSelf? object = ProcedureLinksSelf.fromJson(element);
      if (object is ProcedureLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProcedureLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinksSelf>{};
    }

    return json.entries.fold(<String, ProcedureLinksSelf>{},
        (Map<String, ProcedureLinksSelf> previousValue, element) {
      final ProcedureLinksSelf? object =
          ProcedureLinksSelf.fromJson(element.value);
      if (object is ProcedureLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProcedureLinksSelf-objects as value to a dart map
  static Map<String, List<ProcedureLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProcedureLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProcedureLinksSelf>>(
          key, ProcedureLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ProcedureLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
