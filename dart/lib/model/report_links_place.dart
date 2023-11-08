//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksPlace {
  /// Returns a new [ReportLinksPlace] instance.
  ReportLinksPlace({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksPlace] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksPlace? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksPlace(
      href: json[r'href'],
      iriTemplate: ReportLinksPlaceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the place associated to the given report.
  String? href;

  ReportLinksPlaceIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksPlace &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksPlace> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksPlace>[];
    }

    return json.fold(<ReportLinksPlace>[],
        (List<ReportLinksPlace> previousValue, element) {
      final ReportLinksPlace? object = ReportLinksPlace.fromJson(element);
      if (object is ReportLinksPlace) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksPlace> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksPlace>{};
    }

    return json.entries.fold(<String, ReportLinksPlace>{},
        (Map<String, ReportLinksPlace> previousValue, element) {
      final ReportLinksPlace? object = ReportLinksPlace.fromJson(element.value);
      if (object is ReportLinksPlace) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksPlace-objects as value to a dart map
  static Map<String, List<ReportLinksPlace>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksPlace>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksPlace>>(
          key, ReportLinksPlace.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksPlace[href=$href, iriTemplate=$iriTemplate]';

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
