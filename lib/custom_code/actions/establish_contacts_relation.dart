// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future establishContactsRelation(
  DocumentReference sender,
  DocumentReference receiver,
) async {
  var docSender = await sender.get();
  var docReceiver = await receiver.get();

  if (docSender.exists && docReceiver.exists) {
    List<DocumentReference> senderContacts = docSender['contacts'];
    List<DocumentReference> receiverContacts = docReceiver['contacts'];

    senderContacts.add(receiver);
    receiverContacts.add(sender);

    sender.update({'contacts': senderContacts});
    receiver.update({'contacts': receiverContacts});
  }
}
