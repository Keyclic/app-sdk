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
  static Procedure? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Procedure(
      embedded: ProcedureEmbedded.fromJson(json[r'_embedded']),
      links: ProcedureLinks.fromJson(json[r'_links']),
      createdAt: mapToDateTime(json[r'createdAt']),
      id: json[r'id'],
      mode: ProcedureModeEnum.fromJson(json[r'mode'])!,
      state: ProcedureStateEnum.fromJson(json[r'state']),
      type: json[r'type'],
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  ProcedureEmbedded? embedded;

  ProcedureLinks? links;

  final DateTime? createdAt;

  final String? id;

  ProcedureModeEnum mode;

  ProcedureStateEnum? state;

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

  static List<Procedure> listFromJson(Iterable? json) {
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

class ProcedureModeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProcedureModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const onSite = ProcedureModeEnum._(r'on_site');
  static const remote = ProcedureModeEnum._(r'remote');

  /// List of all possible values in this [enum][ProcedureModeEnum].
  static const values = <ProcedureModeEnum>[
    onSite,
    remote,
  ];

  static ProcedureModeEnum? fromJson(dynamic value) =>
      ProcedureModeEnumTypeTransformer().decode(value);

  static List<ProcedureModeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ProcedureModeEnum.fromJson(value);
        })
        .whereType<ProcedureModeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ProcedureModeEnum] to String,
/// and [decode] dynamic data back to [ProcedureModeEnum].
class ProcedureModeEnumTypeTransformer {
  const ProcedureModeEnumTypeTransformer._();

  factory ProcedureModeEnumTypeTransformer() =>
      _instance ??= ProcedureModeEnumTypeTransformer._();

  String encode(ProcedureModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProcedureModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProcedureModeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'on_site':
        return ProcedureModeEnum.onSite;
      case r'remote':
        return ProcedureModeEnum.remote;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ProcedureModeEnumTypeTransformer] instance.
  static ProcedureModeEnumTypeTransformer? _instance;
}

class ProcedureStateEnum {
  /// Instantiate a new enum with the provided [value].
  const ProcedureStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = ProcedureStateEnum._(r'ACTIVE');
  static const DRAFT = ProcedureStateEnum._(r'DRAFT');
  static const EXPIRED = ProcedureStateEnum._(r'EXPIRED');
  static const FINISHED = ProcedureStateEnum._(r'FINISHED');
  static const REFUSED = ProcedureStateEnum._(r'REFUSED');

  /// List of all possible values in this [enum][ProcedureStateEnum].
  static const values = <ProcedureStateEnum>[
    ACTIVE,
    DRAFT,
    EXPIRED,
    FINISHED,
    REFUSED,
  ];

  static ProcedureStateEnum? fromJson(dynamic value) =>
      ProcedureStateEnumTypeTransformer().decode(value);

  static List<ProcedureStateEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ProcedureStateEnum.fromJson(value);
        })
        .whereType<ProcedureStateEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ProcedureStateEnum] to String,
/// and [decode] dynamic data back to [ProcedureStateEnum].
class ProcedureStateEnumTypeTransformer {
  const ProcedureStateEnumTypeTransformer._();

  factory ProcedureStateEnumTypeTransformer() =>
      _instance ??= ProcedureStateEnumTypeTransformer._();

  String encode(ProcedureStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProcedureStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProcedureStateEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'ACTIVE':
        return ProcedureStateEnum.ACTIVE;
      case r'DRAFT':
        return ProcedureStateEnum.DRAFT;
      case r'EXPIRED':
        return ProcedureStateEnum.EXPIRED;
      case r'FINISHED':
        return ProcedureStateEnum.FINISHED;
      case r'REFUSED':
        return ProcedureStateEnum.REFUSED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ProcedureStateEnumTypeTransformer] instance.
  static ProcedureStateEnumTypeTransformer? _instance;
}
