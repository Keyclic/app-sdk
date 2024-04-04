//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksContract {
  /// Returns a new [AssignmentLinksContract] instance.
  AssignmentLinksContract({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [AssignmentLinksContract] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksContract? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssignmentLinksContract(
      href: json[r'href'],
      iriTemplate:
          AssignmentLinksContractIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the contract associated to the given assignment.
  String? href;

  AssignmentLinksContractIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksContract &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<AssignmentLinksContract> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksContract>[];
    }

    return json.fold(<AssignmentLinksContract>[],
        (List<AssignmentLinksContract> previousValue, element) {
      final AssignmentLinksContract? object =
          AssignmentLinksContract.fromJson(element);
      if (object is AssignmentLinksContract) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksContract> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksContract>{};
    }

    return json.entries.fold(<String, AssignmentLinksContract>{},
        (Map<String, AssignmentLinksContract> previousValue, element) {
      final AssignmentLinksContract? object =
          AssignmentLinksContract.fromJson(element.value);
      if (object is AssignmentLinksContract) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksContract-objects as value to a dart map
  static Map<String, List<AssignmentLinksContract>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksContract>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksContract>>(
          key, AssignmentLinksContract.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentLinksContract[href=$href, iriTemplate=$iriTemplate]';

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
