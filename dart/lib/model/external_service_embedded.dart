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
  static ExternalServiceEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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

  static List<ExternalServiceEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ExternalServiceEmbedded>[];
    }
    return json
        .map((value) {
          return ExternalServiceEmbedded.fromJson(value);
        })
        .whereType<ExternalServiceEmbedded>()
        .toList();
  }

  static Map<String, ExternalServiceEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceEmbedded>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ExternalServiceEmbedded?>(
            key, ExternalServiceEmbedded.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ExternalServiceEmbedded>;
  }

  // maps a json object with a list of ExternalServiceEmbedded-objects as value to a dart map
  static Map<String, List<ExternalServiceEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ExternalServiceEmbedded>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ExternalServiceEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ExternalServiceEmbedded[provider=$provider]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (provider != null) r'provider': provider,
    };
  }
}
