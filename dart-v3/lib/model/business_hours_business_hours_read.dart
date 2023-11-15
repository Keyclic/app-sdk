//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BusinessHoursBusinessHoursRead {
  /// Returns a new [BusinessHoursBusinessHoursRead] instance.
  BusinessHoursBusinessHoursRead({
    this.hoursPerDay,
    required this.name,
    this.openingHours = const [],
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [BusinessHoursBusinessHoursRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessHoursBusinessHoursRead? fromJson(Map<String, dynamic>? json) {
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

    return BusinessHoursBusinessHoursRead(
      hoursPerDay: json[r'hoursPerDay'],
      name: json[r'name'],
      openingHours: List<String>.from(json[r'openingHours']),
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  // minimum: 1
  // maximum: 24
  int? hoursPerDay;

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

    return other is BusinessHoursBusinessHoursRead &&
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
      (hoursPerDay == null ? 0 : hoursPerDay.hashCode) +
      name.hashCode +
      openingHours.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<BusinessHoursBusinessHoursRead> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BusinessHoursBusinessHoursRead>[];
    }

    return json.fold(<BusinessHoursBusinessHoursRead>[],
        (List<BusinessHoursBusinessHoursRead> previousValue, element) {
      final BusinessHoursBusinessHoursRead? object =
          BusinessHoursBusinessHoursRead.fromJson(element);
      if (object is BusinessHoursBusinessHoursRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessHoursBusinessHoursRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessHoursBusinessHoursRead>{};
    }

    return json.entries.fold(<String, BusinessHoursBusinessHoursRead>{},
        (Map<String, BusinessHoursBusinessHoursRead> previousValue, element) {
      final BusinessHoursBusinessHoursRead? object =
          BusinessHoursBusinessHoursRead.fromJson(element.value);
      if (object is BusinessHoursBusinessHoursRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessHoursBusinessHoursRead-objects as value to a dart map
  static Map<String, List<BusinessHoursBusinessHoursRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessHoursBusinessHoursRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessHoursBusinessHoursRead>>(
          key, BusinessHoursBusinessHoursRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessHoursBusinessHoursRead[hoursPerDay=$hoursPerDay, name=$name, openingHours=$openingHours, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && hoursPerDay != null) ||
          (keys?.contains(r'hoursPerDay') ?? false))
        r'hoursPerDay': hoursPerDay,
      r'name': name,
      r'openingHours': openingHours,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}