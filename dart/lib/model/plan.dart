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
  static Plan? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Plan(
      links:
          json[r'_links'] is! Map ? null : PlanLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      name: json[r'name'],
      type: json[r'type'],
      updatedAt: updatedAt,
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

  static List<Plan> listFromJson(Iterable<dynamic>? json) {
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

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
