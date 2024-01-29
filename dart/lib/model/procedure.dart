//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Procedure {
  /// Returns a new [Procedure] instance.
  Procedure({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    required this.mode,
    this.state,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Procedure] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Procedure? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Procedure(
      embedded: ProcedureEmbedded.fromJson(json[r'_embedded']),
      links: ProcedureLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      mode: json[r'mode'],
      state: json[r'state'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ProcedureEmbedded? embedded;

  ProcedureLinks? links;

  final DateTime? createdAt;

  final String? id;

  String mode;

  String? state;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Procedure &&
        other.embedded == embedded &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.mode == mode &&
        other.state == state &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      mode.hashCode +
      (state == null ? 0 : state.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Procedure> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Procedure>[];
    }

    return json.fold(<Procedure>[], (List<Procedure> previousValue, element) {
      final Procedure? object = Procedure.fromJson(element);
      if (object is Procedure) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Procedure> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Procedure>{};
    }

    return json.entries.fold(<String, Procedure>{},
        (Map<String, Procedure> previousValue, element) {
      final Procedure? object = Procedure.fromJson(element.value);
      if (object is Procedure) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Procedure-objects as value to a dart map
  static Map<String, List<Procedure>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Procedure>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Procedure>>(
          key, Procedure.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Procedure[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, mode=$mode, state=$state, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'id')) r'id': id,
      r'mode': mode,
      if (keys == null || keys.contains(r'state')) r'state': state,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
