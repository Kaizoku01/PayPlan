class SmsModel {
  final String smsBody;
  final String smsAddress;
  final DateTime smsReceivedDate;

  SmsModel({required this.smsBody, required this.smsAddress, required this.smsReceivedDate});

  Map<String, dynamic> toMap(){
    return {
      'smsBody': smsBody,
      'smsAddress': smsAddress,
      'smsReceivedDate': smsReceivedDate,
    };
  }
}