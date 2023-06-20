//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ServiceRead {
  /// Returns a new [ServiceRead] instance.
  ServiceRead({
    required this.name,
  });

  /// Returns a new [ServiceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ServiceRead(
      name: json[r'name'],
    );
  }

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceRead && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;

  static List<ServiceRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ServiceRead>[];
    }

    return json.fold(<ServiceRead>[],
        (List<ServiceRead> previousValue, element) {
      final ServiceRead? object = ServiceRead.fromJson(element);
      if (object is ServiceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServiceRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceRead>{};
    }

    return json.entries.fold(<String, ServiceRead>{},
        (Map<String, ServiceRead> previousValue, element) {
      final ServiceRead? object = ServiceRead.fromJson(element.value);
      if (object is ServiceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServiceRead-objects as value to a dart map
  static Map<String, List<ServiceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServiceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServiceRead>>(
          key, ServiceRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'ServiceRead[name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'name': name,
    };
  }
}
