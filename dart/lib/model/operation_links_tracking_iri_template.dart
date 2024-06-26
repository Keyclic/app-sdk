//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksTrackingIriTemplate {
  /// Returns a new [OperationLinksTrackingIriTemplate] instance.
  OperationLinksTrackingIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksTrackingIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksTrackingIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OperationLinksTrackingIriTemplate(
      mapping: OperationLinksAssignmentsIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  OperationLinksAssignmentsIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksTrackingIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksTrackingIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <OperationLinksTrackingIriTemplate>[];
    }

    return json.fold(<OperationLinksTrackingIriTemplate>[],
        (List<OperationLinksTrackingIriTemplate> previousValue, element) {
      final OperationLinksTrackingIriTemplate? object =
          OperationLinksTrackingIriTemplate.fromJson(element);
      if (object is OperationLinksTrackingIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksTrackingIriTemplate>{};
    }

    return json.entries.fold(<String, OperationLinksTrackingIriTemplate>{},
        (Map<String, OperationLinksTrackingIriTemplate> previousValue,
            element) {
      final OperationLinksTrackingIriTemplate? object =
          OperationLinksTrackingIriTemplate.fromJson(element.value);
      if (object is OperationLinksTrackingIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksTrackingIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksTrackingIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksTrackingIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksTrackingIriTemplate>>(
          key, OperationLinksTrackingIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OperationLinksTrackingIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
