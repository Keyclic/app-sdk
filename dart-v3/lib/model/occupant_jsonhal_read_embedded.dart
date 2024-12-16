//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class OccupantJsonhalReadEmbedded {
  /// Returns a new [OccupantJsonhalReadEmbedded] instance.
  OccupantJsonhalReadEmbedded({
    required this.place,
    required this.member,
  });

  /// Returns a new [OccupantJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OccupantJsonhalReadEmbedded(
      place: AssetJsonhalRead.fromJson(json[r'place'])!,
      member: ContactJsonhalRead.fromJson(json[r'member'])!,
    );
  }

  AssetJsonhalRead place;

  ContactJsonhalRead member;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantJsonhalReadEmbedded &&
        other.place == place &&
        other.member == member;
  }

  @override
  int get hashCode => place.hashCode + member.hashCode;

  static List<OccupantJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <OccupantJsonhalReadEmbedded>[];
    }

    return json.fold(<OccupantJsonhalReadEmbedded>[],
        (List<OccupantJsonhalReadEmbedded> previousValue, element) {
      final OccupantJsonhalReadEmbedded? object =
          OccupantJsonhalReadEmbedded.fromJson(element);
      if (object is OccupantJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, OccupantJsonhalReadEmbedded>{},
        (Map<String, OccupantJsonhalReadEmbedded> previousValue, element) {
      final OccupantJsonhalReadEmbedded? object =
          OccupantJsonhalReadEmbedded.fromJson(element.value);
      if (object is OccupantJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<OccupantJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantJsonhalReadEmbedded>>(
          key, OccupantJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OccupantJsonhalReadEmbedded[place=$place, member=$member]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'place': place.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^place\.'))) {
          previousValue.add(element.split(RegExp(r'^place\.')).last);
        }

        return previousValue;
      })),
      r'member': member.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^member\.'))) {
          previousValue.add(element.split(RegExp(r'^member\.')).last);
        }

        return previousValue;
      })),
    };
  }
}
