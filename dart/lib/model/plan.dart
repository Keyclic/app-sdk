//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Plan {
  /// Returns a new [Plan] instance.
  Plan({
    this.links,
    this.createdAt,
    this.id,
    this.name,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Plan] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Plan? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Plan(
      links: PlanLinks.fromJson(json[r'_links']),
      createdAt: mapToDateTime(json[r'createdAt']),
      id: json[r'id'],
      name: json[r'name'],
      type: json[r'type'],
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  PlanLinks? links;

  final DateTime? createdAt;

  final String? id;

  String? name;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Plan &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.name == name &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Plan> listFromJson(Iterable? json) {
    if (json == null) {
      return <Plan>[];
    }

    return json.fold(<Plan>[], (List<Plan> previousValue, element) {
      final Plan? object = Plan.fromJson(element);
      if (object is Plan) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Plan> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Plan>{};
    }

    return json.entries.fold(<String, Plan>{},
        (Map<String, Plan> previousValue, element) {
      final Plan? object = Plan.fromJson(element.value);
      if (object is Plan) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Plan-objects as value to a dart map
  static Map<String, List<Plan>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Plan>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Plan>>(key, Plan.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Plan[links=$links, createdAt=$createdAt, id=$id, name=$name, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
