import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoContactsScreenWidget extends StatefulWidget {
  const NoContactsScreenWidget({Key? key}) : super(key: key);

  @override
  _NoContactsScreenWidgetState createState() => _NoContactsScreenWidgetState();
}

class _NoContactsScreenWidgetState extends State<NoContactsScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
            child: Text(
              'Apasa pe plus pentru a adauga contactele tale',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
          Image.asset(
            'assets/images/contact.png',
            width: 64,
            height: 64,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
