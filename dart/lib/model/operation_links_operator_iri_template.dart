//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksOperatorIriTemplate {
  /// Returns a new [OperationLinksOperatorIriTemplate] instance.
  OperationLinksOperatorIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksOperatorIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksOperatorIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksOperatorIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksOperatorIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksOperatorIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksOperatorIriTemplate>[];
    }

    return json.fold(<OperationLinksOperatorIriTemplate>[],
        (List<OperationLinksOperatorIriTemplate> previousValue, element) {
      final OperationLinksOperatorIriTemplate? object =
          OperationLinksOperatorIriTemplate.fromJson(element);
      if (object is OperationLinksOperatorIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksOperatorIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksOperatorIriTemplate>{};
    }

    return json.entries.fold(<String, OperationLinksOperatorIriTemplate>{},
        (Map<String, OperationLinksOperatorIriTemplate> previousValue,
            element) {
      final OperationLinksOperatorIriTemplate? object =
          OperationLinksOperatorIriTemplate.fromJson(element.value);
      if (object is OperationLinksOperatorIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksOperatorIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksOperatorIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksOperatorIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksOperatorIriTemplate>>(
          key, OperationLinksOperatorIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OperationLinksOperatorIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
