/// persistent_token : null

class Link {
  Link({
      dynamic persistentToken,}){
    _persistentToken = persistentToken;
}

  Link.fromJson(dynamic json) {
    _persistentToken = json['persistent_token'];
  }
  dynamic _persistentToken;
Link copyWith({  dynamic persistentToken,
}) => Link(  persistentToken: persistentToken ?? _persistentToken,
);
  dynamic get persistentToken => _persistentToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['persistent_token'] = _persistentToken;
    return map;
  }

}