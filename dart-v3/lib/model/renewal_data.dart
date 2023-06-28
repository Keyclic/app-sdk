//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class RenewalData {
  /// Returns a new [RenewalData] instance.
  RenewalData({
    this.duration,
  });

  /// Returns a new [RenewalData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RenewalData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RenewalData(
      duration: json[r'duration'],
    );
  }

  /// Duration of the renewal in ISO 8601 duration format.
  String? duration;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RenewalData && other.duration == duration;
  }

  @override
  int get hashCode => (duration == null ? 0 : duration.hashCode);

  static List<RenewalData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RenewalData>[];
    }

    return json.fold(<RenewalData>[],
        (List<RenewalData> previousValue, element) {
      final RenewalData? object = RenewalData.fromJson(element);
      if (object is RenewalData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RenewalData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RenewalData>{};
    }

    return json.entries.fold(<String, RenewalData>{},
        (Map<String, RenewalData> previousValue, element) {
      final RenewalData? object = RenewalData.fromJson(element.value);
      if (object is RenewalData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RenewalData-objects as value to a dart map
  static Map<String, List<RenewalData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RenewalData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RenewalData>>(
          key, RenewalData.listFromJson(value));
    });
  }

  @override
  String toString() => 'RenewalData[duration=$duration]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (duration != null) r'duration': duration,
    };
  }
}
