import 'package:another_telephony/telephony.dart';

class SMSListenService {
  static final Telephony _telephony = Telephony.instance;

  ///[kSMSListeningServiceInitializer] method for initializing the sms listening setup.
  ///• backgroundCallBack -> temporarily passing through this method,
  ///this method is for handling background sms listening
  static void kSMSListeningServiceInitializer(backgroundCallBack){
    _telephony.listenIncomingSms(
        onNewMessage: foregroundSMSHandler,
        onBackgroundMessage: backgroundCallBack,
    );
  }

  ///[foregroundSMSHandler] method for handling sms while in foreground.
  static foregroundSMSHandler(SmsMessage message){
    print("foreground :  ${message.body}");
  }

}