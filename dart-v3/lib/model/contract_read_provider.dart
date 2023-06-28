//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractReadProvider implements ServiceRead {
  /// Returns a new [ContractReadProvider] instance.
  ContractReadProvider({
    required this.name,
  });

  /// Returns a new [ContractReadProvider] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractReadProvider? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContractReadProvider(
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

    return other is ContractReadProvider && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;

  static List<ContractReadProvider> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContractReadProvider>[];
    }

    return json.fold(<ContractReadProvider>[],
        (List<ContractReadProvider> previousValue, element) {
      final ContractReadProvider? object =
          ContractReadProvider.fromJson(element);
      if (object is ContractReadProvider) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractReadProvider> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractReadProvider>{};
    }

    return json.entries.fold(<String, ContractReadProvider>{},
        (Map<String, ContractReadProvider> previousValue, element) {
      final ContractReadProvider? object =
          ContractReadProvider.fromJson(element.value);
      if (object is ContractReadProvider) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractReadProvider-objects as value to a dart map
  static Map<String, List<ContractReadProvider>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractReadProvider>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractReadProvider>>(
          key, ContractReadProvider.listFromJson(value));
    });
  }

  @override
  String toString() => 'ContractReadProvider[name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'name': name,
    };
  }
}
