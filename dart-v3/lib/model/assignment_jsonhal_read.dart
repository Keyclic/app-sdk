//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssignmentJsonhalRead {
  /// Returns a new [AssignmentJsonhalRead] instance.
  AssignmentJsonhalRead({
    this.links,
    this.outOfContract,
    this.id,
  });

  /// Returns a new [AssignmentJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssignmentJsonhalRead(
      links: AssignmentJsonhalReadLinks.fromJson(json[r'_links']),
      outOfContract: json[r'outOfContract'],
      id: json[r'id'],
    );
  }

  AssignmentJsonhalReadLinks? links;

  bool? outOfContract;

  /// The resource identifier.
  final String? id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentJsonhalRead &&
        other.links == links &&
        other.outOfContract == outOfContract &&
        other.id == id;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (outOfContract == null ? 0 : outOfContract.hashCode) +
      (id == null ? 0 : id.hashCode);

  static List<AssignmentJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentJsonhalRead>[];
    }

    return json.fold(<AssignmentJsonhalRead>[],
        (List<AssignmentJsonhalRead> previousValue, element) {
      final AssignmentJsonhalRead? object =
          AssignmentJsonhalRead.fromJson(element);
      if (object is AssignmentJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentJsonhalRead>{};
    }

    return json.entries.fold(<String, AssignmentJsonhalRead>{},
        (Map<String, AssignmentJsonhalRead> previousValue, element) {
      final AssignmentJsonhalRead? object =
          AssignmentJsonhalRead.fromJson(element.value);
      if (object is AssignmentJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentJsonhalRead-objects as value to a dart map
  static Map<String, List<AssignmentJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentJsonhalRead>>(
          key, AssignmentJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentJsonhalRead[links=$links, outOfContract=$outOfContract, id=$id]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'outOfContract'))
        r'outOfContract': outOfContract,
      if (keys == null || keys.contains(r'id')) r'id': id,
    };
  }
}
