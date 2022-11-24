//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

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
  factory Plan.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Plan(
      links: PlanLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      name: json[r'name'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  PlanLinks links;

  DateTime createdAt;

  String id;

  String name;

  String type;

  DateTime updatedAt;

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

  static List<Plan> listFromJson(List<dynamic> json) {
    return <Plan>[
      if (json is List)
        for (dynamic value in json) Plan.fromJson(value),
    ];
  }

  static Map<String, Plan> mapFromJson(Map<String, dynamic> json) {
    return <String, Plan>{
      if (json is Map)
        for (final entry in json.entries) entry.key: Plan.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Plan-objects as value to a dart map
  static Map<String, List<Plan>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Plan>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Plan.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Plan[links=$links, createdAt=$createdAt, id=$id, name=$name, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (name != null) r'name': name,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
