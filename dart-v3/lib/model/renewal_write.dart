//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class RenewalWrite {
  /// Returns a new [RenewalWrite] instance.
  RenewalWrite({
    this.duration,
    this.noticePeriod,
  });

  /// Returns a new [RenewalWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RenewalWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RenewalWrite(
      duration: json[r'duration'],
      noticePeriod: json[r'noticePeriod'],
    );
  }

  /// Duration of the renewal in ISO 8601 duration format.
  String? duration;

  /// Notice period in ISO 8601 duration format. The \"notice period\" refers to the specific length of time that one party is required to give prior notice to the other party before terminating or renewing the contract.
  String? noticePeriod;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RenewalWrite &&
        other.duration == duration &&
        other.noticePeriod == noticePeriod;
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) +
      (noticePeriod == null ? 0 : noticePeriod.hashCode);

  static List<RenewalWrite> listFromJson(Iterable? json) {
    if (json == null) {
      return <RenewalWrite>[];
    }

    return json.fold(<RenewalWrite>[],
        (List<RenewalWrite> previousValue, element) {
      final RenewalWrite? object = RenewalWrite.fromJson(element);
      if (object is RenewalWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RenewalWrite> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RenewalWrite>{};
    }

    return json.entries.fold(<String, RenewalWrite>{},
        (Map<String, RenewalWrite> previousValue, element) {
      final RenewalWrite? object = RenewalWrite.fromJson(element.value);
      if (object is RenewalWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RenewalWrite-objects as value to a dart map
  static Map<String, List<RenewalWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RenewalWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RenewalWrite>>(
          key, RenewalWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RenewalWrite[duration=$duration, noticePeriod=$noticePeriod]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'duration')) r'duration': duration,
      if (keys == null || keys.contains(r'noticePeriod'))
        r'noticePeriod': noticePeriod,
    };
  }
}
