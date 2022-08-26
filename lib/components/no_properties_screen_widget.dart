import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoPropertiesScreenWidget extends StatefulWidget {
  const NoPropertiesScreenWidget({Key? key}) : super(key: key);

  @override
  _NoPropertiesScreenWidgetState createState() =>
      _NoPropertiesScreenWidgetState();
}

class _NoPropertiesScreenWidgetState extends State<NoPropertiesScreenWidget> {
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
              'Se pare ca nu ai introdus deocamdata \nnici o proprietate. Apasa pe plus pentru a dauga o proprietate noua',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
          Image.asset(
            'assets/images/house.png',
            width: 64,
            height: 64,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
