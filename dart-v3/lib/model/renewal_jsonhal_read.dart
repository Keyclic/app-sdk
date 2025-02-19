//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class RenewalJsonhalRead {
  /// Returns a new [RenewalJsonhalRead] instance.
  RenewalJsonhalRead({
    this.duration,
    this.noticePeriod,
  });

  /// Returns a new [RenewalJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RenewalJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RenewalJsonhalRead(
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

    return other is RenewalJsonhalRead &&
        other.duration == duration &&
        other.noticePeriod == noticePeriod;
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) +
      (noticePeriod == null ? 0 : noticePeriod.hashCode);

  static List<RenewalJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <RenewalJsonhalRead>[];
    }

    return json.fold(<RenewalJsonhalRead>[],
        (List<RenewalJsonhalRead> previousValue, element) {
      final RenewalJsonhalRead? object = RenewalJsonhalRead.fromJson(element);
      if (object is RenewalJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RenewalJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RenewalJsonhalRead>{};
    }

    return json.entries.fold(<String, RenewalJsonhalRead>{},
        (Map<String, RenewalJsonhalRead> previousValue, element) {
      final RenewalJsonhalRead? object =
          RenewalJsonhalRead.fromJson(element.value);
      if (object is RenewalJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RenewalJsonhalRead-objects as value to a dart map
  static Map<String, List<RenewalJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RenewalJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RenewalJsonhalRead>>(
          key, RenewalJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RenewalJsonhalRead[duration=$duration, noticePeriod=$noticePeriod]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'duration')) r'duration': duration,
      if (keys == null || keys.contains(r'noticePeriod'))
        r'noticePeriod': noticePeriod,
    };
  }
}
