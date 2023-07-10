//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksAssetIriTemplateMapping {
  /// Returns a new [ReportLinksAssetIriTemplateMapping] instance.
  ReportLinksAssetIriTemplateMapping({
    this.identifier,
  });

  /// Returns a new [ReportLinksAssetIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksAssetIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksAssetIriTemplateMapping(
      identifier: json[r'identifier'],
    );
  }

  String? identifier;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksAssetIriTemplateMapping &&
        other.identifier == identifier;
  }

  @override
  int get hashCode => (identifier == null ? 0 : identifier.hashCode);

  static List<ReportLinksAssetIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksAssetIriTemplateMapping>[];
    }

    return json.fold(<ReportLinksAssetIriTemplateMapping>[],
        (List<ReportLinksAssetIriTemplateMapping> previousValue, element) {
      final ReportLinksAssetIriTemplateMapping? object =
          ReportLinksAssetIriTemplateMapping.fromJson(element);
      if (object is ReportLinksAssetIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksAssetIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksAssetIriTemplateMapping>{};
    }

    return json.entries.fold(<String, ReportLinksAssetIriTemplateMapping>{},
        (Map<String, ReportLinksAssetIriTemplateMapping> previousValue,
            element) {
      final ReportLinksAssetIriTemplateMapping? object =
          ReportLinksAssetIriTemplateMapping.fromJson(element.value);
      if (object is ReportLinksAssetIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksAssetIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ReportLinksAssetIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksAssetIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksAssetIriTemplateMapping>>(
          key, ReportLinksAssetIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksAssetIriTemplateMapping[identifier=$identifier]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (identifier != null) r'identifier': identifier,
    };
  }
}
