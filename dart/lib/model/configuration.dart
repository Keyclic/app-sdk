//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Configuration {
  /// Returns a new [Configuration] instance.
  Configuration({
    this.links,
    this.createdAt,
    this.description,
    this.id,
    this.memberType,
    this.name,
    this.operationType,
    this.placeType,
    this.reportType,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Configuration] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Configuration? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Configuration(
      links: ConfigurationLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      description: json[r'description'],
      id: json[r'id'],
      memberType: ConfigurationMemberType.fromJson(json[r'memberType']),
      name: json[r'name'],
      operationType:
          ConfigurationOperationType.fromJson(json[r'operationType']),
      placeType: ConfigurationPlaceType.fromJson(json[r'placeType']),
      reportType: ConfigurationReportType.fromJson(json[r'reportType']),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ConfigurationLinks? links;

  final DateTime? createdAt;

  String? description;

  final String? id;

  ConfigurationMemberType? memberType;

  String? name;

  ConfigurationOperationType? operationType;

  ConfigurationPlaceType? placeType;

  ConfigurationReportType? reportType;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Configuration &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.id == id &&
        other.memberType == memberType &&
        other.name == name &&
        other.operationType == operationType &&
        other.placeType == placeType &&
        other.reportType == reportType &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (memberType == null ? 0 : memberType.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (operationType == null ? 0 : operationType.hashCode) +
      (placeType == null ? 0 : placeType.hashCode) +
      (reportType == null ? 0 : reportType.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Configuration> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Configuration>[];
    }
    return json
        .map((value) {
          return Configuration.fromJson(value);
        })
        .whereType<Configuration>()
        .toList();
  }

  static Map<String, Configuration> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Configuration>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, Configuration?>(key, Configuration.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Configuration>;
  }

  // maps a json object with a list of Configuration-objects as value to a dart map
  static Map<String, List<Configuration>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<Configuration>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Configuration.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Configuration[links=$links, createdAt=$createdAt, description=$description, id=$id, memberType=$memberType, name=$name, operationType=$operationType, placeType=$placeType, reportType=$reportType, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (id != null) r'id': id,
      if (memberType != null) r'memberType': memberType,
      if (name != null) r'name': name,
      if (operationType != null) r'operationType': operationType,
      if (placeType != null) r'placeType': placeType,
      if (reportType != null) r'reportType': reportType,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
