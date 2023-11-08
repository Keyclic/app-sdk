//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentEmbedded {
  /// Returns a new [AssignmentEmbedded] instance.
  AssignmentEmbedded({
    this.createdBy,
    this.service,
  });

  /// Returns a new [AssignmentEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentEmbedded(
      createdBy: Person.fromJson(json[r'createdBy']),
      service: InternalService.fromJson(json[r'service']),
    );
  }

  Person? createdBy;

  InternalService? service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentEmbedded &&
        other.createdBy == createdBy &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (createdBy == null ? 0 : createdBy.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<AssignmentEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentEmbedded>[];
    }

    return json.fold(<AssignmentEmbedded>[],
        (List<AssignmentEmbedded> previousValue, element) {
      final AssignmentEmbedded? object = AssignmentEmbedded.fromJson(element);
      if (object is AssignmentEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentEmbedded>{};
    }

    return json.entries.fold(<String, AssignmentEmbedded>{},
        (Map<String, AssignmentEmbedded> previousValue, element) {
      final AssignmentEmbedded? object =
          AssignmentEmbedded.fromJson(element.value);
      if (object is AssignmentEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentEmbedded-objects as value to a dart map
  static Map<String, List<AssignmentEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentEmbedded>>(
          key, AssignmentEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentEmbedded[createdBy=$createdBy, service=$service]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && createdBy != null) ||
          (keys?.contains(r'createdBy') ?? false))
        r'createdBy': createdBy?.toJson(),
      if ((keys == null && service != null) ||
          (keys?.contains(r'service') ?? false))
        r'service': service?.toJson(),
    };
  }
}
