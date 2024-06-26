//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceEmbedded {
  /// Returns a new [ExternalServiceEmbedded] instance.
  ExternalServiceEmbedded({
    this.provider,
  });

  /// Returns a new [ExternalServiceEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ExternalServiceEmbedded(
      provider: Organization.fromJson(json[r'provider']),
    );
  }

  Organization? provider;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceEmbedded && other.provider == provider;
  }

  @override
  int get hashCode => (provider == null ? 0 : provider.hashCode);

  static List<ExternalServiceEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <ExternalServiceEmbedded>[];
    }

    return json.fold(<ExternalServiceEmbedded>[],
        (List<ExternalServiceEmbedded> previousValue, element) {
      final ExternalServiceEmbedded? object =
          ExternalServiceEmbedded.fromJson(element);
      if (object is ExternalServiceEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServiceEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceEmbedded>{};
    }

    return json.entries.fold(<String, ExternalServiceEmbedded>{},
        (Map<String, ExternalServiceEmbedded> previousValue, element) {
      final ExternalServiceEmbedded? object =
          ExternalServiceEmbedded.fromJson(element.value);
      if (object is ExternalServiceEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServiceEmbedded-objects as value to a dart map
  static Map<String, List<ExternalServiceEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServiceEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServiceEmbedded>>(
          key, ExternalServiceEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'ExternalServiceEmbedded[provider=$provider]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^provider\.').hasMatch(key)))
        r'provider': provider?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^provider\.'))) {
            previousValue.add(element.split(RegExp(r'^provider\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
