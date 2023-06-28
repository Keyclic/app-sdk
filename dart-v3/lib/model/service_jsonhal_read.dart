//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ServiceJsonhalRead {
  /// Returns a new [ServiceJsonhalRead] instance.
  ServiceJsonhalRead({
    this.links,
    required this.name,
  });

  /// Returns a new [ServiceJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceJsonhalRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ServiceJsonhalRead(
      links: AssetJsonhalReadLinks.fromJson(json[r'_links']),
      name: json[r'name'],
    );
  }

  AssetJsonhalReadLinks? links;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceJsonhalRead &&
        other.links == links &&
        other.name == name;
  }

  @override
  int get hashCode => (links == null ? 0 : links.hashCode) + name.hashCode;

  static List<ServiceJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ServiceJsonhalRead>[];
    }

    return json.fold(<ServiceJsonhalRead>[],
        (List<ServiceJsonhalRead> previousValue, element) {
      final ServiceJsonhalRead? object = ServiceJsonhalRead.fromJson(element);
      if (object is ServiceJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServiceJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceJsonhalRead>{};
    }

    return json.entries.fold(<String, ServiceJsonhalRead>{},
        (Map<String, ServiceJsonhalRead> previousValue, element) {
      final ServiceJsonhalRead? object =
          ServiceJsonhalRead.fromJson(element.value);
      if (object is ServiceJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServiceJsonhalRead-objects as value to a dart map
  static Map<String, List<ServiceJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServiceJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServiceJsonhalRead>>(
          key, ServiceJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'ServiceJsonhalRead[links=$links, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      r'name': name,
    };
  }
}
