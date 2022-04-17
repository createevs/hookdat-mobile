import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingPageWidget extends StatefulWidget {
  const BookingPageWidget({Key key}) : super(key: key);

  @override
  _BookingPageWidgetState createState() => _BookingPageWidgetState();
}

class _BookingPageWidgetState extends State<BookingPageWidget> {
  DateTime datePicked;
  TextEditingController contactNumberController;
  TextEditingController emailAdressController;
  TextEditingController fullNameController;
  String charterTypeValue;
  String numberOfAnglersValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    contactNumberController = TextEditingController();
    emailAdressController = TextEditingController();
    fullNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 14),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 50,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                            size: 24,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Text(
                          'Back',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Open Sans',
                                color: Colors.white,
                                fontSize: 16,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                  child: Text(
                    'Book Your Trip',
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Open Sans',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          elevation: 2,
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30, 50, 30, 50),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: TextFormField(
                  controller: fullNameController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x72000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x72000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).white,
                    contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 18,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Color(0xAD000000),
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: TextFormField(
                controller: emailAdressController,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x72000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x72000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).white,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  prefixIcon: Icon(
                    Icons.email,
                    size: 18,
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xAD000000),
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: TextFormField(
                controller: contactNumberController,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Contact Number',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x72000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x72000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).white,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  prefixIcon: Icon(
                    Icons.phone,
                    size: 18,
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xAD000000),
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: Text(
                'Preferred Date For Trip?',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: Text(
                valueOrDefault<String>(
                  dateTimeFormat('d/M/y', datePicked),
                  'Your Selected Date',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Open Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: FFButtonWidget(
                onPressed: () async {
                  await DatePicker.showDatePicker(
                    context,
                    showTitleActions: true,
                    onConfirm: (date) {
                      setState(() => datePicked = date);
                    },
                    currentTime: getCurrentTimestamp,
                    minTime: getCurrentTimestamp,
                  );
                },
                text: 'Select Date',
                icon: Icon(
                  Icons.calendar_today_outlined,
                  size: 22,
                ),
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Open Sans',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: FlutterFlowDropDown(
                options: [
                  'Morning Inshore',
                  'Afternoon Inshore',
                  'All Day Red Snapper',
                  'Nightime Bowfishing'
                ].toList(),
                onChanged: (val) => setState(() => charterTypeValue = val),
                width: 180,
                height: 50,
                textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xAD000000),
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    ),
                hintText: 'Time Of Day?',
                fillColor: FlutterFlowTheme.of(context).white,
                elevation: 2,
                borderColor: Color(0xAD000000),
                borderWidth: 1,
                borderRadius: 10,
                margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                hidesUnderline: true,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: FlutterFlowDropDown(
                options: ['1-2 Anglers', '3 Anglers', '4 Anglers', '5 Anglers']
                    .toList(),
                onChanged: (val) => setState(() => numberOfAnglersValue = val),
                width: 180,
                height: 50,
                textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xAD000000),
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    ),
                hintText: 'How Many Anglers?',
                fillColor: FlutterFlowTheme.of(context).white,
                elevation: 2,
                borderColor: Color(0xAD000000),
                borderWidth: 1,
                borderRadius: 10,
                margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                hidesUnderline: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
