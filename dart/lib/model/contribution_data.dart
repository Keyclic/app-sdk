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
  static ContributionData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<ContributionData> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContributionData>[];
    }

    return json.fold(<ContributionData>[],
        (List<ContributionData> previousValue, element) {
      final ContributionData? object = ContributionData.fromJson(element);
      if (object is ContributionData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContributionData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionData>{};
    }

    return json.entries.fold(<String, ContributionData>{},
        (Map<String, ContributionData> previousValue, element) {
      final ContributionData? object = ContributionData.fromJson(element.value);
      if (object is ContributionData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContributionData-objects as value to a dart map
  static Map<String, List<ContributionData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContributionData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContributionData>>(
          key, ContributionData.listFromJson(value));
    });
  }

  @override
  String toString() => 'ContributionData[feedback=$feedback]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'feedback': feedback,
    };
  }
}
