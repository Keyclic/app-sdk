//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksAsset {
  /// Returns a new [ReportLinksAsset] instance.
  ReportLinksAsset({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksAsset] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksAsset? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksAsset(
      href: json[r'href'],
      iriTemplate: ReportLinksAssetIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the asset associated to the given report.
  String? href;

  ReportLinksAssetIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksAsset &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksAsset> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksAsset>[];
    }

    return json.fold(<ReportLinksAsset>[],
        (List<ReportLinksAsset> previousValue, element) {
      final ReportLinksAsset? object = ReportLinksAsset.fromJson(element);
      if (object is ReportLinksAsset) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksAsset> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksAsset>{};
    }

    return json.entries.fold(<String, ReportLinksAsset>{},
        (Map<String, ReportLinksAsset> previousValue, element) {
      final ReportLinksAsset? object = ReportLinksAsset.fromJson(element.value);
      if (object is ReportLinksAsset) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksAsset-objects as value to a dart map
  static Map<String, List<ReportLinksAsset>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksAsset>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksAsset>>(
          key, ReportLinksAsset.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksAsset[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}