class CredCard {
  final int id;
  final String number;
  final String holder;
  final String expiration;
  final int cvv;

  CredCard({this.id, this.number, this.holder, this.expiration, this.cvv});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'expiration': expiration,
      'number': number,
      'holder': holder,
      'cvv': cvv
    };
  }
}
