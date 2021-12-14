part of keyclic_sdk_api.api;

class ModelExport {
  ModelExport({
    this.contentType,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  factory ModelExport.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return ModelExport(
      contentType: json['contentType'],
      createdAt: createdAt,
      id: json['id'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  String contentType;

  DateTime createdAt;

  String id;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ModelExport &&
        runtimeType == other.runtimeType &&
        contentType == other.contentType &&
        createdAt == other.createdAt &&
        id == other.id &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= contentType?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<ModelExport> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ModelExport.fromJson(value))
            ?.toList() ??
        <ModelExport>[];
  }

  static Map<String, ModelExport> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ModelExport>((String key, dynamic value) {
          return MapEntry(key, ModelExport.fromJson(value));
        }) ??
        <String, ModelExport>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (contentType != null) 'contentType': contentType,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'ModelExport[contentType=$contentType, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt, ]';
  }
}
