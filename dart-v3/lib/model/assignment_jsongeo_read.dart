//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssignmentJsongeoRead {
  /// Returns a new [AssignmentJsongeoRead] instance.
  AssignmentJsongeoRead({
    this.contract,
    this.member,
    this.outOfContract,
    this.service,
    required this.id,
  });

  /// Returns a new [AssignmentJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssignmentJsongeoRead(
      contract: json[r'contract'],
      member: json[r'member'],
      outOfContract: json[r'outOfContract'],
      service: json[r'service'],
      id: json[r'id'],
    );
  }

  final String? contract;

  final String? member;

  bool? outOfContract;

  final String? service;

  /// The resource identifier.
  final String id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentJsongeoRead &&
        other.contract == contract &&
        other.member == member &&
        other.outOfContract == outOfContract &&
        other.service == service &&
        other.id == id;
  }

  @override
  int get hashCode =>
      (contract == null ? 0 : contract.hashCode) +
      (member == null ? 0 : member.hashCode) +
      (outOfContract == null ? 0 : outOfContract.hashCode) +
      (service == null ? 0 : service.hashCode) +
      id.hashCode;

  static List<AssignmentJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <AssignmentJsongeoRead>[];
    }

    return json.fold(<AssignmentJsongeoRead>[],
        (List<AssignmentJsongeoRead> previousValue, element) {
      final AssignmentJsongeoRead? object =
          AssignmentJsongeoRead.fromJson(element);
      if (object is AssignmentJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentJsongeoRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentJsongeoRead>{};
    }

    return json.entries.fold(<String, AssignmentJsongeoRead>{},
        (Map<String, AssignmentJsongeoRead> previousValue, element) {
      final AssignmentJsongeoRead? object =
          AssignmentJsongeoRead.fromJson(element.value);
      if (object is AssignmentJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentJsongeoRead-objects as value to a dart map
  static Map<String, List<AssignmentJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentJsongeoRead>>(
          key, AssignmentJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentJsongeoRead[contract=$contract, member=$member, outOfContract=$outOfContract, service=$service, id=$id]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'contract')) r'contract': contract,
      if (keys == null || keys.contains(r'member')) r'member': member,
      if (keys == null || keys.contains(r'outOfContract'))
        r'outOfContract': outOfContract,
      if (keys == null || keys.contains(r'service')) r'service': service,
      r'id': id,
    };
  }
}
