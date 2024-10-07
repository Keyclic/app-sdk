//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractJsonhalReadLinks {
  /// Returns a new [ContractJsonhalReadLinks] instance.
  ContractJsonhalReadLinks({
    this.self,
    this.provider,
    this.type,
  });

  /// Returns a new [ContractJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContractJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'self']),
      provider: AssetJsonhalReadLinksType.fromJson(json[r'provider']),
      type: AssetJsonhalReadLinksType.fromJson(json[r'type']),
    );
  }

  GetPlaceCollection200ResponseLinksFirst? self;

  AssetJsonhalReadLinksType? provider;

  AssetJsonhalReadLinksType? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractJsonhalReadLinks &&
        other.self == self &&
        other.provider == provider &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (provider == null ? 0 : provider.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ContractJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContractJsonhalReadLinks>[];
    }

    return json.fold(<ContractJsonhalReadLinks>[],
        (List<ContractJsonhalReadLinks> previousValue, element) {
      final ContractJsonhalReadLinks? object =
          ContractJsonhalReadLinks.fromJson(element);
      if (object is ContractJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, ContractJsonhalReadLinks>{},
        (Map<String, ContractJsonhalReadLinks> previousValue, element) {
      final ContractJsonhalReadLinks? object =
          ContractJsonhalReadLinks.fromJson(element.value);
      if (object is ContractJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<ContractJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractJsonhalReadLinks>>(
          key, ContractJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractJsonhalReadLinks[self=$self, provider=$provider, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^provider\.').hasMatch(key)))
        r'provider': provider?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^provider\.'))) {
            previousValue.add(element.split(RegExp(r'^provider\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^type\.').hasMatch(key)))
        r'type': type?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^type\.'))) {
            previousValue.add(element.split(RegExp(r'^type\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
