import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoTasksScreenWidget extends StatefulWidget {
  const NoTasksScreenWidget({Key? key}) : super(key: key);

  @override
  _NoTasksScreenWidgetState createState() => _NoTasksScreenWidgetState();
}

class _NoTasksScreenWidgetState extends State<NoTasksScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 120, 20, 30),
              child: Text(
                'Adaugă lista de sarcini pe care palmerul trebuie sa o completeze ',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
          ),
          Image.asset(
            'assets/images/notes.png',
            height: 100,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
