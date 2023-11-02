//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksAssignmentIriTemplate {
  /// Returns a new [ReportLinksAssignmentIriTemplate] instance.
  ReportLinksAssignmentIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksAssignmentIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksAssignmentIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksAssignmentIriTemplate(
      mapping: AssignmentLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksAssignmentIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksAssignmentIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksAssignmentIriTemplate>[];
    }

    return json.fold(<ReportLinksAssignmentIriTemplate>[],
        (List<ReportLinksAssignmentIriTemplate> previousValue, element) {
      final ReportLinksAssignmentIriTemplate? object =
          ReportLinksAssignmentIriTemplate.fromJson(element);
      if (object is ReportLinksAssignmentIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksAssignmentIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksAssignmentIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksAssignmentIriTemplate>{},
        (Map<String, ReportLinksAssignmentIriTemplate> previousValue, element) {
      final ReportLinksAssignmentIriTemplate? object =
          ReportLinksAssignmentIriTemplate.fromJson(element.value);
      if (object is ReportLinksAssignmentIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksAssignmentIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksAssignmentIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksAssignmentIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksAssignmentIriTemplate>>(
          key, ReportLinksAssignmentIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksAssignmentIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
