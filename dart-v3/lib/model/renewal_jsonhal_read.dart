//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class RenewalJsonhalRead {
  /// Returns a new [RenewalJsonhalRead] instance.
  RenewalJsonhalRead({
    this.links,
    this.duration,
  });

  /// Returns a new [RenewalJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RenewalJsonhalRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RenewalJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      duration: json[r'duration'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

  /// Duration of the renewal in ISO 8601 duration format.
  String? duration;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RenewalJsonhalRead &&
        other.links == links &&
        other.duration == duration;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (duration == null ? 0 : duration.hashCode);

  static List<RenewalJsonhalRead> listFromJson(List<dynamic>? json) {
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
  String toString() => 'RenewalJsonhalRead[links=$links, duration=$duration]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (duration != null) r'duration': duration,
    };
  }
}
