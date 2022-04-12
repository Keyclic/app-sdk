//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ContributionData {
  /// Returns a new [ContributionData] instance.
  ContributionData({
    @required this.feedback,
  });

  /// Returns a new [ContributionData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ContributionData.fromJson(Map<String, dynamic> json) {
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
  int get hashCode => (feedback == null ? 0 : feedback.hashCode);

  static List<ContributionData> listFromJson(List<dynamic> json) {
    return <ContributionData>[
      if (json is List)
        for (dynamic value in json) ContributionData.fromJson(value),
    ];
  }

  static Map<String, ContributionData> mapFromJson(Map<String, dynamic> json) {
    return <String, ContributionData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ContributionData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ContributionData-objects as value to a dart map
  static Map<String, List<ContributionData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ContributionData>>{
      if (json is Map)
        for (final entry in json.entries)
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
