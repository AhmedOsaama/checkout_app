import 'Card.dart';
import 'Link.dart';

/// card : {"installments":null,"mandate_options":null,"network":null,"request_three_d_secure":"automatic"}
/// link : {"persistent_token":null}

class PaymentMethodOptions {
  PaymentMethodOptions({
      Card? card, 
      Link? link,}){
    _card = card;
    _link = link;
}

  PaymentMethodOptions.fromJson(dynamic json) {
    _card = json['card'] != null ? Card.fromJson(json['card']) : null;
    _link = json['link'] != null ? Link.fromJson(json['link']) : null;
  }
  Card? _card;
  Link? _link;
PaymentMethodOptions copyWith({  Card? card,
  Link? link,
}) => PaymentMethodOptions(  card: card ?? _card,
  link: link ?? _link,
);
  Card? get card => _card;
  Link? get link => _link;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_card != null) {
      map['card'] = _card?.toJson();
    }
    if (_link != null) {
      map['link'] = _link?.toJson();
    }
    return map;
  }

}