class AlertRequest {
  final String tital;
  final String description;
  final String buttonTital;

  AlertRequest({
    this.tital,
    this.description,
    this.buttonTital,
  });
}

class AlertResponse {
  final String fieldOne;
  final String fieldTwo;
  final bool confirmed;

  AlertResponse({
    this.fieldOne,
    this.fieldTwo,
    this.confirmed,
  });
}

