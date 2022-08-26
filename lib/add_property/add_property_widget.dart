import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../property_added/property_added_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPropertyWidget extends StatefulWidget {
  const AddPropertyWidget({Key? key}) : super(key: key);

  @override
  _AddPropertyWidgetState createState() => _AddPropertyWidgetState();
}

class _AddPropertyWidgetState extends State<AddPropertyWidget> {
  List<String>? groupCheckboxInputValues;
  TextEditingController? accessPickupLocationController;
  TextEditingController? accessDropoffLocationController;
  TextEditingController? accessNumericalCodeController;
  String uploadedFileUrl1 = '';
  TextEditingController? propertyNameController;
  TextEditingController? propertyLocationController;
  double? propertyBedroomsValue;
  double? propertyBathroomsValue;
  String uploadedFileUrl2 = '';
  String? parkingLotRadioButtonValue;
  TextEditingController? parkingLocationController;
  TextEditingController? propertyDetailsController;
  PropertiesRecord? document;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    accessDropoffLocationController = TextEditingController();
    accessPickupLocationController = TextEditingController();
    accessNumericalCodeController = TextEditingController();
    parkingLocationController = TextEditingController();
    propertyLocationController = TextEditingController();
    propertyNameController = TextEditingController();
    propertyDetailsController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
        automaticallyImplyLeading: true,
        title: Text(
          'Adaugă Proprietatea',
          style: FlutterFlowTheme.of(context).title3,
        ),
        actions: [],
        centerTitle: true,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 30, 0, 25),
                                child: InkWell(
                                  onTap: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      allowPhoto: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      showUploadMessage(
                                        context,
                                        'Uploading file...',
                                        showLoading: true,
                                      );
                                      final downloadUrls = (await Future.wait(
                                              selectedMedia.map((m) async =>
                                                  await uploadData(
                                                      m.storagePath, m.bytes))))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                      if (downloadUrls.length ==
                                          selectedMedia.length) {
                                        setState(() => uploadedFileUrl1 =
                                            downloadUrls.first);
                                        showUploadMessage(
                                          context,
                                          'Success!',
                                        );
                                      } else {
                                        showUploadMessage(
                                          context,
                                          'Failed to upload media',
                                        );
                                        return;
                                      }
                                    }
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        uploadedFileUrl1,
                                        'https://firebasestorage.googleapis.com/v0/b/palmkeeper-b4ed3.appspot.com/o/assets%2Fnoimageplaceholder.png?alt=media&token=d74dd53b-518b-46a5-a7ed-9f5a9fb3740b',
                                      ),
                                      width: 340,
                                      height: 140,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.83, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'Numele proprietății: ',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '*',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFEC1919),
                                            ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 16, 14),
                                    child: TextFormField(
                                      controller: propertyNameController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Numele proprietății...',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xD595A1AC),
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 32, 20, 12),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xD595A1AC),
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return 'Acest camp este obligatoriu';
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.83, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'Locația proprietății: ',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '*',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFEC1919),
                                            ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 16, 14),
                                    child: TextFormField(
                                      controller: propertyLocationController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Locație...',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xD595A1AC),
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 32, 20, 12),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xD595A1AC),
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return 'Acest camp este obligatoriu';
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.85, 0),
                                              child: Text(
                                                'Camere: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1,
                                              ),
                                            ),
                                            Text(
                                              '*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFEC1919),
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            propertyBedroomsValue?.toString(),
                                            '1',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Slider(
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    inactiveColor: Color(0xFF9E9E9E),
                                    min: 1,
                                    max: 10,
                                    value: propertyBedroomsValue ??= 1,
                                    divisions: 9,
                                    onChanged: (newValue) {
                                      setState(() =>
                                          propertyBedroomsValue = newValue);
                                    },
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.85, 0),
                                              child: Text(
                                                'Bai: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1,
                                              ),
                                            ),
                                            Text(
                                              '*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFEC1919),
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            propertyBathroomsValue?.toString(),
                                            '1',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 4),
                                    child: Slider(
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      inactiveColor: Color(0xFF9E9E9E),
                                      min: 1,
                                      max: 10,
                                      value: propertyBathroomsValue ??= 1,
                                      label: propertyBathroomsValue.toString(),
                                      divisions: 9,
                                      onChanged: (newValue) {
                                        setState(() =>
                                            propertyBathroomsValue = newValue);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 0, 0),
                                        child: Text(
                                          'Loc de parcare:',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1,
                                        ),
                                      ),
                                      Text(
                                        '*',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFEC1919),
                                            ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowRadioButton(
                                          options: [
                                            'Cu loc de parcare',
                                            'Fără loc de parcare'
                                          ].toList(),
                                          initialValue: 'Fără loc de parcare',
                                          onChanged: (value) {
                                            setState(() =>
                                                parkingLotRadioButtonValue =
                                                    value);
                                          },
                                          optionHeight: 50,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.black,
                                                  ),
                                          buttonPosition:
                                              RadioButtonPosition.right,
                                          direction: Axis.vertical,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          inactiveRadioButtonColor:
                                              Color(0x8A000000),
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (parkingLotRadioButtonValue ==
                                      'Cu loc de parcare')
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 0, 0, 0),
                                                  child: Text(
                                                    'Unde se află locul de parcare?',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              ' *',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFEC1919),
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 4, 20, 4),
                                              child: TextFormField(
                                                controller:
                                                    parkingLocationController,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Locul de parcare se află...',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xD595A1AC),
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              20, 32, 20, 12),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xD595A1AC),
                                                        ),
                                                textAlign: TextAlign.start,
                                                maxLines: 1,
                                                validator: (val) {
                                                  if (val == null ||
                                                      val.isEmpty) {
                                                    return 'Acest camp este obligatoriu';
                                                  }

                                                  return null;
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  if (parkingLotRadioButtonValue ==
                                      'Cu loc de parcare')
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 0, 0),
                                              child: Text(
                                                'Încarcă o imagine  (opțional)',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 15, 0, 25),
                                          child: InkWell(
                                            onTap: () async {
                                              final selectedMedia =
                                                  await selectMediaWithSourceBottomSheet(
                                                context: context,
                                                allowPhoto: true,
                                              );
                                              if (selectedMedia != null &&
                                                  selectedMedia.every((m) =>
                                                      validateFileFormat(
                                                          m.storagePath,
                                                          context))) {
                                                showUploadMessage(
                                                  context,
                                                  'Uploading file...',
                                                  showLoading: true,
                                                );
                                                final downloadUrls = (await Future
                                                        .wait(selectedMedia.map(
                                                            (m) async =>
                                                                await uploadData(
                                                                    m.storagePath,
                                                                    m.bytes))))
                                                    .where((u) => u != null)
                                                    .map((u) => u!)
                                                    .toList();
                                                ScaffoldMessenger.of(context)
                                                    .hideCurrentSnackBar();
                                                if (downloadUrls.length ==
                                                    selectedMedia.length) {
                                                  setState(() =>
                                                      uploadedFileUrl2 =
                                                          downloadUrls.first);
                                                  showUploadMessage(
                                                    context,
                                                    'Success!',
                                                  );
                                                } else {
                                                  showUploadMessage(
                                                    context,
                                                    'Failed to upload media',
                                                  );
                                                  return;
                                                }
                                              }
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  uploadedFileUrl2,
                                                  'https://firebasestorage.googleapis.com/v0/b/palmkeeper-b4ed3.appspot.com/o/assets%2Fnoimageplaceholder.png?alt=media&token=d74dd53b-518b-46a5-a7ed-9f5a9fb3740b',
                                                ),
                                                width: 340,
                                                height: 140,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.75, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'Acces intrare în proprietate:',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        ' *',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFEC1919),
                                            ),
                                      ),
                                    ],
                                  ),
                                  FlutterFlowCheckboxGroup(
                                    initiallySelected:
                                        groupCheckboxInputValues ??= [],
                                    options: ['Cheie', 'Cartela', 'Cod numeric']
                                        .toList(),
                                    onChanged: (val) => setState(
                                        () => groupCheckboxInputValues = val),
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    checkColor: Colors.white,
                                    checkboxBorderColor: Color(0xFF95A1AC),
                                    textStyle:
                                        FlutterFlowTheme.of(context).bodyText1,
                                    itemPadding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 5),
                                  ),
                                  if (groupCheckboxInputValues
                                          ?.contains(valueOrDefault<String>(
                                        '',
                                        'Cheie',
                                      )) ??
                                      true)
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 0, 0),
                                              child: Text(
                                                'De unde se poate prelua cheia? ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2,
                                              ),
                                            ),
                                            Text(
                                              '*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFEC1919),
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 14),
                                          child: TextFormField(
                                            controller:
                                                accessPickupLocationController,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Cheia se află...',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xD595A1AC),
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(20, 32, 20, 12),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xD595A1AC),
                                                ),
                                            textAlign: TextAlign.start,
                                            maxLines: 1,
                                            validator: (val) {
                                              if (val == null || val.isEmpty) {
                                                return 'Acest camp este obligatoriu';
                                              }

                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  if (groupCheckboxInputValues
                                          ?.contains(valueOrDefault<String>(
                                        '',
                                        'Cheie',
                                      )) ??
                                      true)
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 0, 0),
                                              child: Text(
                                                'Unde trebuie predată cheia? ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2,
                                              ),
                                            ),
                                            Text(
                                              '*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFEC1919),
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 14),
                                          child: TextFormField(
                                            controller:
                                                accessDropoffLocationController,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Cheia trebuie predată...',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xD595A1AC),
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(20, 32, 20, 12),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xD595A1AC),
                                                ),
                                            textAlign: TextAlign.start,
                                            maxLines: 1,
                                            validator: (val) {
                                              if (val == null || val.isEmpty) {
                                                return 'Acest camp este obligatoriu';
                                              }

                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  if (groupCheckboxInputValues
                                          ?.contains(valueOrDefault<String>(
                                        '',
                                        'Cod numeric',
                                      )) ??
                                      true)
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 0, 0),
                                              child: Text(
                                                'Introduceți codul numeric: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2,
                                              ),
                                            ),
                                            Text(
                                              '*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFEC1919),
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 14),
                                          child: TextFormField(
                                            controller:
                                                accessNumericalCodeController,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Introduceți codul numeric...',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xD595A1AC),
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(20, 32, 20, 12),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xD595A1AC),
                                                ),
                                            textAlign: TextAlign.start,
                                            maxLines: 1,
                                            validator: (val) {
                                              if (val == null || val.isEmpty) {
                                                return 'Acest camp este obligatoriu';
                                              }

                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 0, 0),
                                        child: Text(
                                          'Doriți să transmiteți ceva palmerului?',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 4, 16, 0),
                                      child: TextFormField(
                                        controller: propertyDetailsController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xD595A1AC),
                                                  ),
                                          hintText: 'Introduceți mesajul...',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 32, 20, 12),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xD595A1AC),
                                            ),
                                        textAlign: TextAlign.start,
                                        maxLines: 4,
                                        keyboardType: TextInputType.multiline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (formKey.currentState == null ||
                                  !formKey.currentState!.validate()) {
                                return;
                              }

                              if (uploadedFileUrl1 == null ||
                                  uploadedFileUrl1.isEmpty) {
                                return;
                              }

                              final propertiesCreateData = {
                                ...createPropertiesRecordData(
                                  ownerId: currentUserUid,
                                  name: propertyNameController!.text,
                                  location: propertyLocationController!.text,
                                  image: uploadedFileUrl1,
                                  bedrooms: propertyBedroomsValue,
                                  bathrooms: propertyBathroomsValue,
                                  parkingLotLocation:
                                      parkingLocationController!.text,
                                  parkingLotImage: uploadedFileUrl2,
                                  accessPickupLocation:
                                      accessPickupLocationController!.text,
                                  accessDropoffLocation:
                                      accessDropoffLocationController!.text,
                                  accessNumericalCode:
                                      accessNumericalCodeController!.text,
                                  parkingLot: parkingLotRadioButtonValue,
                                  details: propertyDetailsController!.text,
                                ),
                                'accessGroup': groupCheckboxInputValues,
                              };
                              var propertiesRecordReference =
                                  PropertiesRecord.collection.doc();
                              await propertiesRecordReference
                                  .set(propertiesCreateData);
                              document = PropertiesRecord.getDocumentFromData(
                                  propertiesCreateData,
                                  propertiesRecordReference);
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PropertyAddedWidget(
                                    propertyRef: document!.reference,
                                  ),
                                ),
                              );

                              setState(() {});
                            },
                            text: 'Mai Departe',
                            options: FFButtonOptions(
                              width: 130,
                              height: 45,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
