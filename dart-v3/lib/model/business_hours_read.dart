//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BusinessHoursRead {
  /// Returns a new [BusinessHoursRead] instance.
  BusinessHoursRead({
    required this.hoursPerDay,
    required this.name,
    this.openingHours = const [],
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [BusinessHoursRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessHoursRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BusinessHoursRead(
      hoursPerDay: json[r'hoursPerDay'],
      name: json[r'name'],
      openingHours: List<String>.from(json[r'openingHours']),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

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

    return other is BusinessHoursRead &&
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
      hoursPerDay.hashCode +
      name.hashCode +
      openingHours.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<BusinessHoursRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <BusinessHoursRead>[];
    }

    return json.fold(<BusinessHoursRead>[],
        (List<BusinessHoursRead> previousValue, element) {
      final BusinessHoursRead? object = BusinessHoursRead.fromJson(element);
      if (object is BusinessHoursRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessHoursRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessHoursRead>{};
    }

    return json.entries.fold(<String, BusinessHoursRead>{},
        (Map<String, BusinessHoursRead> previousValue, element) {
      final BusinessHoursRead? object =
          BusinessHoursRead.fromJson(element.value);
      if (object is BusinessHoursRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessHoursRead-objects as value to a dart map
  static Map<String, List<BusinessHoursRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessHoursRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessHoursRead>>(
          key, BusinessHoursRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessHoursRead[hoursPerDay=$hoursPerDay, name=$name, openingHours=$openingHours, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
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
