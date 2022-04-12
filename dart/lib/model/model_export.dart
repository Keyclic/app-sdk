//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ModelExport {
  /// Returns a new [ModelExport] instance.
  ModelExport({
    @required this.contentType,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [ModelExport] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ModelExport.fromJson(Map<String, dynamic> json) {
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

    return ModelExport(
      contentType: json[r'contentType'],
      createdAt: createdAt,
      id: json[r'id'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  String contentType;

  DateTime createdAt;

  String id;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ModelExport &&
        other.contentType == contentType &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (contentType == null ? 0 : contentType.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ModelExport> listFromJson(List<dynamic> json) {
    return <ModelExport>[
      if (json is List)
        for (dynamic value in json) ModelExport.fromJson(value),
    ];
  }

  static Map<String, ModelExport> mapFromJson(Map<String, dynamic> json) {
    return <String, ModelExport>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ModelExport.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ModelExport-objects as value to a dart map
  static Map<String, List<ModelExport>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ModelExport>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ModelExport.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ModelExport[contentType=$contentType, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'contentType': contentType,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
