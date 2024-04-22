//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BusinessHoursJsonhalBusinessHoursRead {
  /// Returns a new [BusinessHoursJsonhalBusinessHoursRead] instance.
  BusinessHoursJsonhalBusinessHoursRead({
    this.links,
    required this.hoursPerDay,
    required this.name,
    this.openingHours = const [],
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [BusinessHoursJsonhalBusinessHoursRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessHoursJsonhalBusinessHoursRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BusinessHoursJsonhalBusinessHoursRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      hoursPerDay: json[r'hoursPerDay'],
      name: json[r'name'],
      openingHours: List<String>.from(json[r'openingHours']),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  AssetTypeJsonhalReadLinks? links;

  String hoursPerDay;

  String name;

  List<String> openingHours;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessHoursJsonhalBusinessHoursRead &&
        other.links == links &&
        other.hoursPerDay == hoursPerDay &&
        other.name == name &&
        DeepCollectionEquality.unordered()
            .equals(openingHours, other.openingHours) &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      hoursPerDay.hashCode +
      name.hashCode +
      openingHours.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<BusinessHoursJsonhalBusinessHoursRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <BusinessHoursJsonhalBusinessHoursRead>[];
    }

    return json.fold(<BusinessHoursJsonhalBusinessHoursRead>[],
        (List<BusinessHoursJsonhalBusinessHoursRead> previousValue, element) {
      final BusinessHoursJsonhalBusinessHoursRead? object =
          BusinessHoursJsonhalBusinessHoursRead.fromJson(element);
      if (object is BusinessHoursJsonhalBusinessHoursRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessHoursJsonhalBusinessHoursRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessHoursJsonhalBusinessHoursRead>{};
    }

    return json.entries.fold(<String, BusinessHoursJsonhalBusinessHoursRead>{},
        (Map<String, BusinessHoursJsonhalBusinessHoursRead> previousValue,
            element) {
      final BusinessHoursJsonhalBusinessHoursRead? object =
          BusinessHoursJsonhalBusinessHoursRead.fromJson(element.value);
      if (object is BusinessHoursJsonhalBusinessHoursRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessHoursJsonhalBusinessHoursRead-objects as value to a dart map
  static Map<String, List<BusinessHoursJsonhalBusinessHoursRead>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessHoursJsonhalBusinessHoursRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessHoursJsonhalBusinessHoursRead>>(
          key, BusinessHoursJsonhalBusinessHoursRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessHoursJsonhalBusinessHoursRead[links=$links, hoursPerDay=$hoursPerDay, name=$name, openingHours=$openingHours, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

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
      r'hoursPerDay': hoursPerDay,
      r'name': name,
      r'openingHours': openingHours,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
