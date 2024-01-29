//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksService {
  /// Returns a new [AssignmentLinksService] instance.
  AssignmentLinksService({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [AssignmentLinksService] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksService(
      href: json[r'href'],
      iriTemplate:
          AssignmentLinksServiceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the service associated to the given assignment.
  String? href;

  AssignmentLinksServiceIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksService &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<AssignmentLinksService> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksService>[];
    }

    return json.fold(<AssignmentLinksService>[],
        (List<AssignmentLinksService> previousValue, element) {
      final AssignmentLinksService? object =
          AssignmentLinksService.fromJson(element);
      if (object is AssignmentLinksService) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksService> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksService>{};
    }

    return json.entries.fold(<String, AssignmentLinksService>{},
        (Map<String, AssignmentLinksService> previousValue, element) {
      final AssignmentLinksService? object =
          AssignmentLinksService.fromJson(element.value);
      if (object is AssignmentLinksService) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksService-objects as value to a dart map
  static Map<String, List<AssignmentLinksService>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksService>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksService>>(
          key, AssignmentLinksService.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentLinksService[href=$href, iriTemplate=$iriTemplate]';

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
