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

    return json.fold(<ModelExport>[],
        (List<ModelExport> previousValue, element) {
      final ModelExport? object = ModelExport.fromJson(element);
      if (object is ModelExport) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ModelExport> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ModelExport>{};
    }

    return json.entries.fold(<String, ModelExport>{},
        (Map<String, ModelExport> previousValue, element) {
      final ModelExport? object = ModelExport.fromJson(element.value);
      if (object is ModelExport) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ModelExport-objects as value to a dart map
  static Map<String, List<ModelExport>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ModelExport>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ModelExport>>(
          key, ModelExport.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ModelExport[contentType=$contentType, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'contentType': contentType,
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
