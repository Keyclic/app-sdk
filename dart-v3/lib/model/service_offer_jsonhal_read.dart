//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ServiceOfferJsonhalRead {
  /// Returns a new [ServiceOfferJsonhalRead] instance.
  ServiceOfferJsonhalRead({
    required this.links,
    required this.name,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Returns a new [ServiceOfferJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceOfferJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ServiceOfferJsonhalRead(
      links: ServiceOfferJsonhalReadLinks.fromJson(json[r'_links'])!,
      name: json[r'name'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt'])!,
      updatedAt: mapToDateTime(json[r'updatedAt'])!,
    );
  }

  ServiceOfferJsonhalReadLinks links;

  String name;

  /// The resource identifier.
  final String id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceOfferJsonhalRead &&
        other.links == links &&
        other.name == name &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      links.hashCode +
      name.hashCode +
      id.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode;

  static List<ServiceOfferJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ServiceOfferJsonhalRead>[];
    }

    return json.fold(<ServiceOfferJsonhalRead>[],
        (List<ServiceOfferJsonhalRead> previousValue, element) {
      final ServiceOfferJsonhalRead? object =
          ServiceOfferJsonhalRead.fromJson(element);
      if (object is ServiceOfferJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServiceOfferJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceOfferJsonhalRead>{};
    }

    return json.entries.fold(<String, ServiceOfferJsonhalRead>{},
        (Map<String, ServiceOfferJsonhalRead> previousValue, element) {
      final ServiceOfferJsonhalRead? object =
          ServiceOfferJsonhalRead.fromJson(element.value);
      if (object is ServiceOfferJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServiceOfferJsonhalRead-objects as value to a dart map
  static Map<String, List<ServiceOfferJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServiceOfferJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServiceOfferJsonhalRead>>(
          key, ServiceOfferJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ServiceOfferJsonhalRead[links=$links, name=$name, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'_links': links.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^links\.'))) {
          previousValue.add(element.split(RegExp(r'^links\.')).last);
        }

        return previousValue;
      })),
      r'name': name,
      r'id': id,
      r'createdAt': createdAt.toUtc().toIso8601String(),
      r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
