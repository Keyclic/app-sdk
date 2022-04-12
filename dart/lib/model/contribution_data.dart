//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionData {
  /// Returns a new [ContributionData] instance.
  ContributionData({
    required this.feedback,
  });

  /// Returns a new [ContributionData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionData(
      feedback: json[r'feedback'],
    );
  }

  String feedback;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionData && other.feedback == feedback;
  }

  @override
  int get hashCode => feedback.hashCode;

  static List<ContributionData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContributionData>[];
    }
    return json
        .map((value) {
          return ContributionData.fromJson(value);
        })
        .whereType<ContributionData>()
        .toList();
  }

  static Map<String, ContributionData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionData>{};
    }

    final map = json.map((key, value) => MapEntry<String, ContributionData?>(
        key, ContributionData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ContributionData>;
  }

  // maps a json object with a list of ContributionData-objects as value to a dart map
  static Map<String, List<ContributionData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ContributionData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ContributionData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ContributionData[feedback=$feedback]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'feedback': feedback,
    };
  }
}
