//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssignmentRead {
  /// Returns a new [AssignmentRead] instance.
  AssignmentRead({
    this.contract,
    this.member,
    this.outOfContract,
    this.service,
    this.id,
  });

  /// Returns a new [AssignmentRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssignmentRead(
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
  final String? id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentRead &&
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
      (id == null ? 0 : id.hashCode);

  static List<AssignmentRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <AssignmentRead>[];
    }

    return json.fold(<AssignmentRead>[],
        (List<AssignmentRead> previousValue, element) {
      final AssignmentRead? object = AssignmentRead.fromJson(element);
      if (object is AssignmentRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentRead>{};
    }

    return json.entries.fold(<String, AssignmentRead>{},
        (Map<String, AssignmentRead> previousValue, element) {
      final AssignmentRead? object = AssignmentRead.fromJson(element.value);
      if (object is AssignmentRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentRead-objects as value to a dart map
  static Map<String, List<AssignmentRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentRead>>(
          key, AssignmentRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentRead[contract=$contract, member=$member, outOfContract=$outOfContract, service=$service, id=$id]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'contract')) r'contract': contract,
      if (keys == null || keys.contains(r'member')) r'member': member,
      if (keys == null || keys.contains(r'outOfContract'))
        r'outOfContract': outOfContract,
      if (keys == null || keys.contains(r'service')) r'service': service,
      if (keys == null || keys.contains(r'id')) r'id': id,
    };
  }
}
