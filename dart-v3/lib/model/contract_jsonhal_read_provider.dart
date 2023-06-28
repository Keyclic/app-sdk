//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractJsonhalReadProvider implements ServiceJsonhalRead {
  /// Returns a new [ContractJsonhalReadProvider] instance.
  ContractJsonhalReadProvider({
    this.links,
    required this.name,
  });

  /// Returns a new [ContractJsonhalReadProvider] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractJsonhalReadProvider? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContractJsonhalReadProvider(
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

    return other is ContractJsonhalReadProvider &&
        other.links == links &&
        other.name == name;
  }

  @override
  int get hashCode => (links == null ? 0 : links.hashCode) + name.hashCode;

  static List<ContractJsonhalReadProvider> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContractJsonhalReadProvider>[];
    }

    return json.fold(<ContractJsonhalReadProvider>[],
        (List<ContractJsonhalReadProvider> previousValue, element) {
      final ContractJsonhalReadProvider? object =
          ContractJsonhalReadProvider.fromJson(element);
      if (object is ContractJsonhalReadProvider) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractJsonhalReadProvider> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractJsonhalReadProvider>{};
    }

    return json.entries.fold(<String, ContractJsonhalReadProvider>{},
        (Map<String, ContractJsonhalReadProvider> previousValue, element) {
      final ContractJsonhalReadProvider? object =
          ContractJsonhalReadProvider.fromJson(element.value);
      if (object is ContractJsonhalReadProvider) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractJsonhalReadProvider-objects as value to a dart map
  static Map<String, List<ContractJsonhalReadProvider>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractJsonhalReadProvider>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractJsonhalReadProvider>>(
          key, ContractJsonhalReadProvider.listFromJson(value));
    });
  }

  @override
  String toString() => 'ContractJsonhalReadProvider[links=$links, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      r'name': name,
    };
  }
}
