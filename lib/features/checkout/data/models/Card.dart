/// installments : null
/// mandate_options : null
/// network : null
/// request_three_d_secure : "automatic"

class Card {
  Card({
      dynamic installments, 
      dynamic mandateOptions, 
      dynamic network, 
      String? requestThreeDSecure,}){
    _installments = installments;
    _mandateOptions = mandateOptions;
    _network = network;
    _requestThreeDSecure = requestThreeDSecure;
}

  Card.fromJson(dynamic json) {
    _installments = json['installments'];
    _mandateOptions = json['mandate_options'];
    _network = json['network'];
    _requestThreeDSecure = json['request_three_d_secure'];
  }
  dynamic _installments;
  dynamic _mandateOptions;
  dynamic _network;
  String? _requestThreeDSecure;
Card copyWith({  dynamic installments,
  dynamic mandateOptions,
  dynamic network,
  String? requestThreeDSecure,
}) => Card(  installments: installments ?? _installments,
  mandateOptions: mandateOptions ?? _mandateOptions,
  network: network ?? _network,
  requestThreeDSecure: requestThreeDSecure ?? _requestThreeDSecure,
);
  dynamic get installments => _installments;
  dynamic get mandateOptions => _mandateOptions;
  dynamic get network => _network;
  String? get requestThreeDSecure => _requestThreeDSecure;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['installments'] = _installments;
    map['mandate_options'] = _mandateOptions;
    map['network'] = _network;
    map['request_three_d_secure'] = _requestThreeDSecure;
    return map;
  }

}