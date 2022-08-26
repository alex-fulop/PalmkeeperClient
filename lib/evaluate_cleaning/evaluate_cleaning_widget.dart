import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../thanks_for_feedback/thanks_for_feedback_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class EvaluateCleaningWidget extends StatefulWidget {
  const EvaluateCleaningWidget({
    Key? key,
    this.orderRef,
  }) : super(key: key);

  final DocumentReference? orderRef;

  @override
  _EvaluateCleaningWidgetState createState() => _EvaluateCleaningWidgetState();
}

class _EvaluateCleaningWidgetState extends State<EvaluateCleaningWidget> {
  TextEditingController? feedbackCleaningController;
  double? ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    feedbackCleaningController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(1, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
            child: Text(
              'Evaluază curățenia',
              style: FlutterFlowTheme.of(context).title1,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 50,
              icon: Icon(
                Icons.close,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Cum a fost curăţenia?',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RatingBar.builder(
                              onRatingUpdate: (newValue) =>
                                  setState(() => ratingBarValue = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                              ),
                              direction: Axis.horizontal,
                              initialRating: ratingBarValue ??= 0,
                              unratedColor: Color(0xFF9E9E9E),
                              itemCount: 5,
                              itemSize: 60,
                              glowColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                          child: Text(
                            'Descrie situaţia pentru a ne ajuta să înţelegem mai bine (opţional)',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 4, 16, 20),
                                child: TextFormField(
                                  controller: feedbackCleaningController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20, 32, 20, 12),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .black600,
                                      ),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  keyboardType: TextInputType.multiline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        StreamBuilder<List<FeedbackRecord>>(
                          stream: queryFeedbackRecord(
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<FeedbackRecord> buttonFeedbackRecordList =
                                snapshot.data!;
                            // Return an empty Container when the document does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final buttonFeedbackRecord =
                                buttonFeedbackRecordList.isNotEmpty
                                    ? buttonFeedbackRecordList.first
                                    : null;
                            return FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ThanksForFeedbackWidget(),
                                  ),
                                );

                                final feedbackCreateData =
                                    createFeedbackRecordData(
                                  description: feedbackCleaningController!.text,
                                  ratingStars: ratingBarValue,
                                  orderRef: widget.orderRef,
                                  userId: currentUserUid,
                                );
                                await FeedbackRecord.collection
                                    .doc()
                                    .set(feedbackCreateData);
                              },
                              text: 'Gata',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
