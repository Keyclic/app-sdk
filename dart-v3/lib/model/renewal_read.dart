//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class RenewalRead {
  /// Returns a new [RenewalRead] instance.
  RenewalRead({
    this.duration,
    this.noticePeriod,
  });

  /// Returns a new [RenewalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RenewalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RenewalRead(
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

    return other is RenewalRead &&
        other.duration == duration &&
        other.noticePeriod == noticePeriod;
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) +
      (noticePeriod == null ? 0 : noticePeriod.hashCode);

  static List<RenewalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <RenewalRead>[];
    }

    return json.fold(<RenewalRead>[],
        (List<RenewalRead> previousValue, element) {
      final RenewalRead? object = RenewalRead.fromJson(element);
      if (object is RenewalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RenewalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RenewalRead>{};
    }

    return json.entries.fold(<String, RenewalRead>{},
        (Map<String, RenewalRead> previousValue, element) {
      final RenewalRead? object = RenewalRead.fromJson(element.value);
      if (object is RenewalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RenewalRead-objects as value to a dart map
  static Map<String, List<RenewalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RenewalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RenewalRead>>(
          key, RenewalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RenewalRead[duration=$duration, noticePeriod=$noticePeriod]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'duration')) r'duration': duration,
      if (keys == null || keys.contains(r'noticePeriod'))
        r'noticePeriod': noticePeriod,
    };
  }
}
