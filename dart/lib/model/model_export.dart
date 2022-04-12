//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ModelExport {
  /// Returns a new [ModelExport] instance.
  ModelExport({
    required this.contentType,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [ModelExport] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ModelExport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt = DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt = DateTime.parse(json[r'updatedAt']);
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

  final DateTime? createdAt;

  final String? id;

  String? type;

  final DateTime? updatedAt;

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
      contentType.hashCode +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ModelExport> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ModelExport>[];
    }
    return json
        .map((value) {
          return ModelExport.fromJson(value);
        })
        .whereType<ModelExport>()
        .toList();
  }

  static Map<String, ModelExport> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ModelExport>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ModelExport?>(key, ModelExport.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ModelExport>;
  }

  // maps a json object with a list of ModelExport-objects as value to a dart map
  static Map<String, List<ModelExport>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ModelExport>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ModelExport.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ModelExport[contentType=$contentType, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'contentType': contentType,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
