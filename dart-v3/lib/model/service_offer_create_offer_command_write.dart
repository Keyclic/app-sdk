//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ServiceOfferCreateOfferCommandWrite {
  /// Returns a new [ServiceOfferCreateOfferCommandWrite] instance.
  ServiceOfferCreateOfferCommandWrite({
    required this.name,
    required this.service,
  });

  /// Returns a new [ServiceOfferCreateOfferCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceOfferCreateOfferCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ServiceOfferCreateOfferCommandWrite(
      name: json[r'name'],
      service: json[r'service'],
    );
  }

  String name;

  String service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceOfferCreateOfferCommandWrite &&
        other.name == name &&
        other.service == service;
  }

  @override
  int get hashCode => name.hashCode + service.hashCode;

  static List<ServiceOfferCreateOfferCommandWrite> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ServiceOfferCreateOfferCommandWrite>[];
    }

    return json.fold(<ServiceOfferCreateOfferCommandWrite>[],
        (List<ServiceOfferCreateOfferCommandWrite> previousValue, element) {
      final ServiceOfferCreateOfferCommandWrite? object =
          ServiceOfferCreateOfferCommandWrite.fromJson(element);
      if (object is ServiceOfferCreateOfferCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServiceOfferCreateOfferCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceOfferCreateOfferCommandWrite>{};
    }

    return json.entries.fold(<String, ServiceOfferCreateOfferCommandWrite>{},
        (Map<String, ServiceOfferCreateOfferCommandWrite> previousValue,
            element) {
      final ServiceOfferCreateOfferCommandWrite? object =
          ServiceOfferCreateOfferCommandWrite.fromJson(element.value);
      if (object is ServiceOfferCreateOfferCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServiceOfferCreateOfferCommandWrite-objects as value to a dart map
  static Map<String, List<ServiceOfferCreateOfferCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServiceOfferCreateOfferCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServiceOfferCreateOfferCommandWrite>>(
          key, ServiceOfferCreateOfferCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ServiceOfferCreateOfferCommandWrite[name=$name, service=$service]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'name': name,
      r'service': service,
    };
  }
}
