import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoItemsScreenWidget extends StatefulWidget {
  const NoItemsScreenWidget({Key? key}) : super(key: key);

  @override
  _NoItemsScreenWidgetState createState() => _NoItemsScreenWidgetState();
}

class _NoItemsScreenWidgetState extends State<NoItemsScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 120, 20, 30),
              child: Text(
                'Adaugă itemele care trebuie verificate după un client, sau care trebuie schimbate',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
          ),
          Image.asset(
            'assets/images/layers.png',
            height: 100,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
