//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureLinksCreatedBy {
  /// Returns a new [ProcedureLinksCreatedBy] instance.
  ProcedureLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ProcedureLinksCreatedBy] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureLinksCreatedBy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksCreatedBy(
      href: json[r'href'],
      iriTemplate:
          ProcedureLinksCreatedByIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the createdBy associated to the given procedure.
  String? href;

  ProcedureLinksCreatedByIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinksCreatedBy &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ProcedureLinksCreatedBy> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProcedureLinksCreatedBy>[];
    }

    return json.fold(<ProcedureLinksCreatedBy>[],
        (List<ProcedureLinksCreatedBy> previousValue, element) {
      final ProcedureLinksCreatedBy? object =
          ProcedureLinksCreatedBy.fromJson(element);
      if (object is ProcedureLinksCreatedBy) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProcedureLinksCreatedBy> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinksCreatedBy>{};
    }

    return json.entries.fold(<String, ProcedureLinksCreatedBy>{},
        (Map<String, ProcedureLinksCreatedBy> previousValue, element) {
      final ProcedureLinksCreatedBy? object =
          ProcedureLinksCreatedBy.fromJson(element.value);
      if (object is ProcedureLinksCreatedBy) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProcedureLinksCreatedBy-objects as value to a dart map
  static Map<String, List<ProcedureLinksCreatedBy>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProcedureLinksCreatedBy>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProcedureLinksCreatedBy>>(
          key, ProcedureLinksCreatedBy.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ProcedureLinksCreatedBy[href=$href, iriTemplate=$iriTemplate]';

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
