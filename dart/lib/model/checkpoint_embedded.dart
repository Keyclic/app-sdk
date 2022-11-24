//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class CheckpointEmbedded {
  /// Returns a new [CheckpointEmbedded] instance.
  CheckpointEmbedded({
    this.createdBy,
  });

  /// Returns a new [CheckpointEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory CheckpointEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CheckpointEmbedded(
      createdBy: Person.fromJson(json[r'createdBy']),
    );
  }

  Person createdBy;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointEmbedded && other.createdBy == createdBy;
  }

  @override
  int get hashCode => (createdBy == null ? 0 : createdBy.hashCode);

  static List<CheckpointEmbedded> listFromJson(List<dynamic> json) {
    return <CheckpointEmbedded>[
      if (json is List)
        for (dynamic value in json) CheckpointEmbedded.fromJson(value),
    ];
  }

  static Map<String, CheckpointEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return <String, CheckpointEmbedded>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CheckpointEmbedded.fromJson(entry.value),
    };
  }

  // maps a json object with a list of CheckpointEmbedded-objects as value to a dart map
  static Map<String, List<CheckpointEmbedded>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<CheckpointEmbedded>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CheckpointEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'CheckpointEmbedded[createdBy=$createdBy]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (createdBy != null) r'createdBy': createdBy,
    };
  }
}
