//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InternalServiceEmbedded {
  /// Returns a new [InternalServiceEmbedded] instance.
  InternalServiceEmbedded({
    this.manager,
  });

  /// Returns a new [InternalServiceEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InternalServiceEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceEmbedded(
      manager: Member.fromJson(json[r'manager']),
    );
  }

  Member manager;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceEmbedded && other.manager == manager;
  }

  @override
  int get hashCode => (manager == null ? 0 : manager.hashCode);

  static List<InternalServiceEmbedded> listFromJson(List<dynamic> json) {
    return <InternalServiceEmbedded>[
      if (json is List)
        for (dynamic value in json) InternalServiceEmbedded.fromJson(value),
    ];
  }

  static Map<String, InternalServiceEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InternalServiceEmbedded>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceEmbedded.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalServiceEmbedded-objects as value to a dart map
  static Map<String, List<InternalServiceEmbedded>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InternalServiceEmbedded>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'InternalServiceEmbedded[manager=$manager]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (manager != null) r'manager': manager,
    };
  }
}
