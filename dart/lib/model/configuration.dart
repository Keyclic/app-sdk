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

    return json.fold(<Configuration>[],
        (List<Configuration> previousValue, element) {
      final Configuration? object = Configuration.fromJson(element);
      if (object is Configuration) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Configuration> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Configuration>{};
    }

    return json.entries.fold(<String, Configuration>{},
        (Map<String, Configuration> previousValue, element) {
      final Configuration? object = Configuration.fromJson(element.value);
      if (object is Configuration) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Configuration-objects as value to a dart map
  static Map<String, List<Configuration>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Configuration>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Configuration>>(
          key, Configuration.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Configuration[links=$links, createdAt=$createdAt, description=$description, id=$id, memberType=$memberType, name=$name, operationType=$operationType, placeType=$placeType, reportType=$reportType, type=$type, updatedAt=$updatedAt]';

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
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null ||
          keys.any((key) => RegExp(r'^memberType\.').hasMatch(key)))
        r'memberType': memberType?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^memberType\.'))) {
            previousValue.add(element.split(RegExp(r'^memberType\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null ||
          keys.any((key) => RegExp(r'^operationType\.').hasMatch(key)))
        r'operationType': operationType?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^operationType\.'))) {
            previousValue.add(element.split(RegExp(r'^operationType\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^placeType\.').hasMatch(key)))
        r'placeType': placeType?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^placeType\.'))) {
            previousValue.add(element.split(RegExp(r'^placeType\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^reportType\.').hasMatch(key)))
        r'reportType': reportType?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^reportType\.'))) {
            previousValue.add(element.split(RegExp(r'^reportType\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
