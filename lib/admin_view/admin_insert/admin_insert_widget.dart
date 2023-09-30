import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'admin_insert_model.dart';
export 'admin_insert_model.dart';

class AdminInsertWidget extends StatefulWidget {
  const AdminInsertWidget({Key? key}) : super(key: key);

  @override
  _AdminInsertWidgetState createState() => _AdminInsertWidgetState();
}

class _AdminInsertWidgetState extends State<AdminInsertWidget> {
  late AdminInsertModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminInsertModel());

    _model.presidentController ??= TextEditingController();
    _model.vicePresidentController ??= TextEditingController();
    _model.secretaryController ??= TextEditingController();
    _model.treasurerController ??= TextEditingController();
    _model.auditorController ??= TextEditingController();
    _model.businessManagerController ??= TextEditingController();
    _model.pioController ??= TextEditingController();
    _model.representativeController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Color(0xFF9DBDED),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (scaffoldKey.currentState!.isDrawerOpen ||
                                  scaffoldKey.currentState!.isEndDrawerOpen) {
                                Navigator.pop(context);
                              }

                              setState(() {
                                FFAppState().candidateSwitcherPersisted = false;
                              });
                            },
                            child: Icon(
                              Icons.close_outlined,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 90.0,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: 90.0,
                                      height: 90.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          currentUserPhoto,
                                          'https://images.unsplash.com/photo-1511367461989-f85a21fda167?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxwcm9maWxlfGVufDB8fHx8MTY5NTczNjcyN3ww&ixlib=rb-4.0.3&q=80&w=1080',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AuthUserStreamWidget(
                          builder: (context) => Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black,
                                  fontSize: 18.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: Color(0xFF95A1AC),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                    child: SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'adminHome',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );

                                setState(() {
                                  FFAppState().presSwitch = false;
                                  FFAppState().vpresidentSwitch = false;
                                  FFAppState().secretarySwitch = false;
                                  FFAppState().treasurerSwitch = false;
                                  FFAppState().auditorSwitch = false;
                                  FFAppState().businessManagerSwitch = false;
                                  FFAppState().pioSwitch = false;
                                  FFAppState().representativeSwitch = false;
                                  FFAppState().candidateSwitcherPersisted =
                                      false;
                                });
                              },
                              child: Container(
                                width: double.infinity,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Icon(
                                          Icons.home,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          size: 35.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            14.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Home',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 22.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'adminDashboard',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Icon(
                                          Icons.dashboard,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          size: 35.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            14.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Dashboard',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 22.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (scaffoldKey.currentState!.isDrawerOpen ||
                                    scaffoldKey.currentState!.isEndDrawerOpen) {
                                  Navigator.pop(context);
                                }

                                setState(() {
                                  FFAppState().presSwitch = false;
                                  FFAppState().vpresidentSwitch = false;
                                  FFAppState().secretarySwitch = false;
                                  FFAppState().treasurerSwitch = false;
                                  FFAppState().auditorSwitch = false;
                                  FFAppState().businessManagerSwitch = false;
                                  FFAppState().pioSwitch = false;
                                  FFAppState().representativeSwitch = false;
                                  FFAppState().candidateSwitcherPersisted =
                                      false;
                                });
                              },
                              child: Container(
                                width: double.infinity,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Icon(
                                          Icons.person_add,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 35.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            14.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Add Candidates',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                fontSize: 22.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'adminList',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );

                                setState(() {
                                  FFAppState().presSwitch = false;
                                  FFAppState().vpresidentSwitch = false;
                                  FFAppState().secretarySwitch = false;
                                  FFAppState().treasurerSwitch = false;
                                  FFAppState().auditorSwitch = false;
                                  FFAppState().businessManagerSwitch = false;
                                  FFAppState().pioSwitch = false;
                                  FFAppState().representativeSwitch = false;
                                  FFAppState().candidateSwitcherPersisted =
                                      false;
                                });
                              },
                              child: Container(
                                width: double.infinity,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Icon(
                                          Icons.groups_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          size: 35.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            14.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Candidate List',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 22.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'adminUsers',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );

                                setState(() {
                                  FFAppState().presSwitch = false;
                                  FFAppState().vpresidentSwitch = false;
                                  FFAppState().secretarySwitch = false;
                                  FFAppState().treasurerSwitch = false;
                                  FFAppState().auditorSwitch = false;
                                  FFAppState().businessManagerSwitch = false;
                                  FFAppState().pioSwitch = false;
                                  FFAppState().representativeSwitch = false;
                                  FFAppState().candidateSwitcherPersisted =
                                      false;
                                });
                              },
                              child: Container(
                                width: double.infinity,
                                height: 60.0,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Icon(
                                          Icons.manage_accounts,
                                          color: Colors.black,
                                          size: 35.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            14.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Admin Users',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.black,
                                                fontSize: 22.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'adminSetting',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );

                              setState(() {
                                FFAppState().presSwitch = false;
                                FFAppState().vpresidentSwitch = false;
                                FFAppState().secretarySwitch = false;
                                FFAppState().treasurerSwitch = false;
                                FFAppState().auditorSwitch = false;
                                FFAppState().businessManagerSwitch = false;
                                FFAppState().pioSwitch = false;
                                FFAppState().representativeSwitch = false;
                                FFAppState().candidateSwitcherPersisted = false;
                              });
                            },
                            child: Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      child: Icon(
                                        Icons.settings_outlined,
                                        color: Colors.black,
                                        size: 35.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          14.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Setting',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.black,
                                              fontSize: 22.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: StreamBuilder<List<UsersRecord>>(
                              stream: queryUsersRecord(
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<UsersRecord> rowUsersRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final rowUsersRecord =
                                    rowUsersRecordList.isNotEmpty
                                        ? rowUsersRecordList.first
                                        : null;
                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        setState(() {
                                          FFAppState().votingPhaseSwitch = true;
                                        });
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              content: Text(
                                                  'VOTING PHASE IS NOW ON'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      text: 'On Voting',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        setState(() {
                                          FFAppState().votingPhaseSwitch =
                                              false;
                                        });
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              content: Text(
                                                  'VOTING PHASE IS NOW OFF'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      text: 'Off Voting',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFFFF0000),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        GoRouter.of(context).prepareAuthEvent();
                                        await authManager.signOut();
                                        GoRouter.of(context)
                                            .clearRedirectLocation();

                                        setState(() {
                                          FFAppState().presSwitch = false;
                                          FFAppState().vpresidentSwitch = false;
                                          FFAppState().secretarySwitch = false;
                                          FFAppState().treasurerSwitch = false;
                                          FFAppState().auditorSwitch = false;
                                          FFAppState().businessManagerSwitch =
                                              false;
                                          FFAppState().pioSwitch = false;
                                          FFAppState().representativeSwitch =
                                              false;
                                          FFAppState()
                                                  .candidateSwitcherPersisted =
                                              false;
                                        });

                                        context.pushNamedAuth(
                                            'loginpage', context.mounted);
                                      },
                                      text: 'Logout',
                                      icon: Icon(
                                        Icons.login_outlined,
                                        color: Color(0xFFFF0000),
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(28.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]
                            .divide(SizedBox(height: 10.0))
                            .around(SizedBox(height: 10.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF14181B),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/bup_bg.jpg',
                ).image,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x990F1113),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 25.0, 0.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 80.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          scaffoldKey.currentState!
                                              .openDrawer();
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  scaffoldKey.currentState!
                                                      .openDrawer();
                                                },
                                                child: Icon(
                                                  Icons.density_medium_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/logo_preview_rev_1.png',
                                            width: 99.0,
                                            height: 105.0,
                                            fit: BoxFit.contain,
                                          ),
                                          Text(
                                            'POLANGUI \nCAMPUS',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  fontSize: 24.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: Color(0xFF95A1AC),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 30.0, 0.0, 30.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 30.0, 20.0),
                                                child: StreamBuilder<
                                                    List<UsersRecord>>(
                                                  stream: queryUsersRecord(
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<UsersRecord>
                                                        columnUsersRecordList =
                                                        snapshot.data!;
                                                    final columnUsersRecord =
                                                        columnUsersRecordList
                                                                .isNotEmpty
                                                            ? columnUsersRecordList
                                                                .first
                                                            : null;
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .presSwitch =
                                                                  true;
                                                              FFAppState()
                                                                      .vpresidentSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .secretarySwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .treasurerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .auditorSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .businessManagerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .pioSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .representativeSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          onDoubleTap:
                                                              () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .presSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          child: Text(
                                                            'PRESIDENT',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                                  fontSize:
                                                                      30.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .presSwitch ==
                                                                true)
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .presidentController,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.presidentController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    onFieldSubmitted:
                                                                        (_) async {
                                                                      await queryUsersRecordOnce()
                                                                          .then(
                                                                            (records) =>
                                                                                _model.simpleSearchResults1 = TextSearch(
                                                                              records
                                                                                  .map(
                                                                                    (record) => TextSearchItem(record, [
                                                                                      record.displayName!
                                                                                    ]),
                                                                                  )
                                                                                  .toList(),
                                                                            ).search(_model.presidentController.text).map((r) => r.object).toList(),
                                                                          )
                                                                          .onError((_, __) => _model.simpleSearchResults1 =
                                                                              [])
                                                                          .whenComplete(() =>
                                                                              setState(() {}));

                                                                      setState(
                                                                          () {
                                                                        FFAppState().candidateSwitcherPersisted =
                                                                            true;
                                                                      });
                                                                    },
                                                                    autofocus:
                                                                        true,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .send,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      hintText:
                                                                          'Search here',
                                                                      hintStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    validator: _model
                                                                        .presidentControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        if ((FFAppState()
                                                                    .candidateSwitcherPersisted ==
                                                                true) &&
                                                            (FFAppState()
                                                                    .presSwitch ==
                                                                true))
                                                          Builder(
                                                            builder: (context) {
                                                              final presidentName =
                                                                  _model
                                                                      .simpleSearchResults1
                                                                      .toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    presidentName
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        presidentNameIndex) {
                                                                  final presidentNameItem =
                                                                      presidentName[
                                                                          presidentNameIndex];
                                                                  return Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'Submit',
                                                                          backgroundColor:
                                                                              Color(0xFF00FF03),
                                                                          icon:
                                                                              Icons.send,
                                                                          onPressed:
                                                                              (_) async {
                                                                            if ((presidentNameItem.position == 'president') ||
                                                                                (presidentNameItem.position == 'vicePresident') ||
                                                                                (presidentNameItem.position == 'secretary') ||
                                                                                (presidentNameItem.position == 'treasurer') ||
                                                                                (presidentNameItem.position == 'auditor') ||
                                                                                (presidentNameItem.position == 'businessManager') ||
                                                                                (presidentNameItem.position == 'pio') ||
                                                                                (presidentNameItem.position == 'representative')) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'This person is already a Candidate.',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              await presidentNameItem.reference.update(createUsersRecordData(
                                                                                position: 'president',
                                                                                voteCount: 0,
                                                                                isCandidate: true,
                                                                              ));
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Successfully added',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            }

                                                                            setState(() {
                                                                              _model.presidentController?.clear();
                                                                            });
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        presidentNameItem
                                                                            .displayName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 18.0,
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      dense:
                                                                          false,
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .presSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .vpresidentSwitch =
                                                                  true;
                                                              FFAppState()
                                                                      .secretarySwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .treasurerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .auditorSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .businessManagerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .pioSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .representativeSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          onDoubleTap:
                                                              () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .vpresidentSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          child: Text(
                                                            'VICE PRESIDENT',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                                  fontSize:
                                                                      30.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .vpresidentSwitch ==
                                                                true)
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .vicePresidentController,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.vicePresidentController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    onFieldSubmitted:
                                                                        (_) async {
                                                                      await queryUsersRecordOnce()
                                                                          .then(
                                                                            (records) =>
                                                                                _model.simpleSearchResults2 = TextSearch(
                                                                              records
                                                                                  .map(
                                                                                    (record) => TextSearchItem(record, [
                                                                                      record.displayName!
                                                                                    ]),
                                                                                  )
                                                                                  .toList(),
                                                                            ).search(_model.vicePresidentController.text).map((r) => r.object).toList(),
                                                                          )
                                                                          .onError((_, __) => _model.simpleSearchResults2 =
                                                                              [])
                                                                          .whenComplete(() =>
                                                                              setState(() {}));

                                                                      setState(
                                                                          () {
                                                                        FFAppState().candidateSwitcherPersisted =
                                                                            true;
                                                                      });
                                                                    },
                                                                    autofocus:
                                                                        true,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .send,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      hintText:
                                                                          'Search here',
                                                                      hintStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    validator: _model
                                                                        .vicePresidentControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        if ((FFAppState()
                                                                    .candidateSwitcherPersisted ==
                                                                true) &&
                                                            (FFAppState()
                                                                    .vpresidentSwitch ==
                                                                true))
                                                          Builder(
                                                            builder: (context) {
                                                              final vicePresidentNames =
                                                                  _model
                                                                      .simpleSearchResults2
                                                                      .toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    vicePresidentNames
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        vicePresidentNamesIndex) {
                                                                  final vicePresidentNamesItem =
                                                                      vicePresidentNames[
                                                                          vicePresidentNamesIndex];
                                                                  return Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'Submit',
                                                                          backgroundColor:
                                                                              Color(0xFF00FF03),
                                                                          icon:
                                                                              Icons.send,
                                                                          onPressed:
                                                                              (_) async {
                                                                            if ((vicePresidentNamesItem.position == 'president') ||
                                                                                (vicePresidentNamesItem.position == 'vicePresident') ||
                                                                                (vicePresidentNamesItem.position == 'secretary') ||
                                                                                (vicePresidentNamesItem.position == 'treasurer') ||
                                                                                (vicePresidentNamesItem.position == 'auditor') ||
                                                                                (vicePresidentNamesItem.position == 'businessManager') ||
                                                                                (vicePresidentNamesItem.position == 'pio') ||
                                                                                (vicePresidentNamesItem.position == 'representative')) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'This person is already a Candidate.',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              await vicePresidentNamesItem.reference.update(createUsersRecordData(
                                                                                position: 'vicePresident',
                                                                                voteCount: 0,
                                                                                isCandidate: true,
                                                                              ));
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Successfully added',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            }

                                                                            setState(() {
                                                                              _model.presidentController?.clear();
                                                                            });
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        vicePresidentNamesItem
                                                                            .displayName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 18.0,
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      dense:
                                                                          false,
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .presSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .vpresidentSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .secretarySwitch =
                                                                  true;
                                                              FFAppState()
                                                                      .treasurerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .auditorSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .businessManagerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .pioSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .representativeSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          onDoubleTap:
                                                              () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .secretarySwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          child: Text(
                                                            'SECRETARY',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                                  fontSize:
                                                                      30.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .secretarySwitch ==
                                                                true)
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .secretaryController,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.secretaryController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    onFieldSubmitted:
                                                                        (_) async {
                                                                      await queryUsersRecordOnce()
                                                                          .then(
                                                                            (records) =>
                                                                                _model.simpleSearchResults3 = TextSearch(
                                                                              records
                                                                                  .map(
                                                                                    (record) => TextSearchItem(record, [
                                                                                      record.displayName!
                                                                                    ]),
                                                                                  )
                                                                                  .toList(),
                                                                            ).search(_model.secretaryController.text).map((r) => r.object).toList(),
                                                                          )
                                                                          .onError((_, __) => _model.simpleSearchResults3 =
                                                                              [])
                                                                          .whenComplete(() =>
                                                                              setState(() {}));

                                                                      setState(
                                                                          () {
                                                                        FFAppState().candidateSwitcherPersisted =
                                                                            true;
                                                                      });
                                                                    },
                                                                    autofocus:
                                                                        true,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .send,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      hintText:
                                                                          'Search names here',
                                                                      hintStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    validator: _model
                                                                        .secretaryControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        if ((FFAppState()
                                                                    .candidateSwitcherPersisted ==
                                                                true) &&
                                                            (FFAppState()
                                                                    .secretarySwitch ==
                                                                true))
                                                          Builder(
                                                            builder: (context) {
                                                              final secretaryNames =
                                                                  _model
                                                                      .simpleSearchResults3
                                                                      .toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    secretaryNames
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        secretaryNamesIndex) {
                                                                  final secretaryNamesItem =
                                                                      secretaryNames[
                                                                          secretaryNamesIndex];
                                                                  return Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'Submit',
                                                                          backgroundColor:
                                                                              Color(0xFF00FF03),
                                                                          icon:
                                                                              Icons.send,
                                                                          onPressed:
                                                                              (_) async {
                                                                            if ((secretaryNamesItem.position == 'president') ||
                                                                                (secretaryNamesItem.position == 'vicePresident') ||
                                                                                (secretaryNamesItem.position == 'secretary') ||
                                                                                (secretaryNamesItem.position == 'treasurer') ||
                                                                                (secretaryNamesItem.position == 'auditor') ||
                                                                                (secretaryNamesItem.position == 'businessManager') ||
                                                                                (secretaryNamesItem.position == 'pio') ||
                                                                                (secretaryNamesItem.position == 'representative')) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'This person is already a Candidate.',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              await secretaryNamesItem.reference.update(createUsersRecordData(
                                                                                position: 'secretary',
                                                                                voteCount: 0,
                                                                                isCandidate: true,
                                                                              ));
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Successfully added',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            }

                                                                            setState(() {
                                                                              _model.presidentController?.clear();
                                                                            });
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        secretaryNamesItem
                                                                            .displayName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 18.0,
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      dense:
                                                                          false,
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .presSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .vpresidentSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .secretarySwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .treasurerSwitch =
                                                                  true;
                                                              FFAppState()
                                                                      .auditorSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .businessManagerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .pioSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .representativeSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          onDoubleTap:
                                                              () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .treasurerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          child: Text(
                                                            'TREASURER',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                                  fontSize:
                                                                      30.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .treasurerSwitch ==
                                                                true)
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .treasurerController,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.treasurerController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    onFieldSubmitted:
                                                                        (_) async {
                                                                      await queryUsersRecordOnce()
                                                                          .then(
                                                                            (records) =>
                                                                                _model.simpleSearchResults4 = TextSearch(
                                                                              records
                                                                                  .map(
                                                                                    (record) => TextSearchItem(record, [
                                                                                      record.displayName!
                                                                                    ]),
                                                                                  )
                                                                                  .toList(),
                                                                            ).search(_model.treasurerController.text).map((r) => r.object).toList(),
                                                                          )
                                                                          .onError((_, __) => _model.simpleSearchResults4 =
                                                                              [])
                                                                          .whenComplete(() =>
                                                                              setState(() {}));

                                                                      setState(
                                                                          () {
                                                                        FFAppState().candidateSwitcherPersisted =
                                                                            true;
                                                                      });
                                                                    },
                                                                    autofocus:
                                                                        true,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .send,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      hintText:
                                                                          'Search names here',
                                                                      hintStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    validator: _model
                                                                        .treasurerControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        if ((FFAppState()
                                                                    .candidateSwitcherPersisted ==
                                                                true) &&
                                                            (FFAppState()
                                                                    .treasurerSwitch ==
                                                                true))
                                                          Builder(
                                                            builder: (context) {
                                                              final treasurerNames =
                                                                  _model
                                                                      .simpleSearchResults4
                                                                      .toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    treasurerNames
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        treasurerNamesIndex) {
                                                                  final treasurerNamesItem =
                                                                      treasurerNames[
                                                                          treasurerNamesIndex];
                                                                  return Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'Submit',
                                                                          backgroundColor:
                                                                              Color(0xFF00FF03),
                                                                          icon:
                                                                              Icons.send,
                                                                          onPressed:
                                                                              (_) async {
                                                                            if ((treasurerNamesItem.position == 'president') ||
                                                                                (treasurerNamesItem.position == 'vicePresident') ||
                                                                                (treasurerNamesItem.position == 'secretary') ||
                                                                                (treasurerNamesItem.position == 'treasurer') ||
                                                                                (treasurerNamesItem.position == 'auditor') ||
                                                                                (treasurerNamesItem.position == 'businessManager') ||
                                                                                (treasurerNamesItem.position == 'pio') ||
                                                                                (treasurerNamesItem.position == 'representative')) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'This person is already a Candidate.',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              await treasurerNamesItem.reference.update(createUsersRecordData(
                                                                                position: 'treasurer',
                                                                                voteCount: 0,
                                                                                isCandidate: true,
                                                                              ));
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Successfully added',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            }

                                                                            setState(() {
                                                                              _model.presidentController?.clear();
                                                                            });
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        treasurerNamesItem
                                                                            .displayName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 18.0,
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      dense:
                                                                          false,
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .presSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .vpresidentSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .secretarySwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .treasurerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .auditorSwitch =
                                                                  true;
                                                              FFAppState()
                                                                      .businessManagerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .pioSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .representativeSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          onDoubleTap:
                                                              () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .auditorSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          child: Text(
                                                            'AUDITOR',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                                  fontSize:
                                                                      30.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .auditorSwitch ==
                                                                true)
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .auditorController,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.auditorController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    onFieldSubmitted:
                                                                        (_) async {
                                                                      await queryUsersRecordOnce()
                                                                          .then(
                                                                            (records) =>
                                                                                _model.simpleSearchResults5 = TextSearch(
                                                                              records
                                                                                  .map(
                                                                                    (record) => TextSearchItem(record, [
                                                                                      record.displayName!
                                                                                    ]),
                                                                                  )
                                                                                  .toList(),
                                                                            ).search(_model.auditorController.text).map((r) => r.object).toList(),
                                                                          )
                                                                          .onError((_, __) => _model.simpleSearchResults5 =
                                                                              [])
                                                                          .whenComplete(() =>
                                                                              setState(() {}));

                                                                      setState(
                                                                          () {
                                                                        FFAppState().candidateSwitcherPersisted =
                                                                            true;
                                                                      });
                                                                    },
                                                                    autofocus:
                                                                        true,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .send,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      hintText:
                                                                          'Search names here',
                                                                      hintStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    validator: _model
                                                                        .auditorControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        if ((FFAppState()
                                                                    .candidateSwitcherPersisted ==
                                                                true) &&
                                                            (FFAppState()
                                                                    .auditorSwitch ==
                                                                true))
                                                          Builder(
                                                            builder: (context) {
                                                              final auditorNames =
                                                                  _model
                                                                      .simpleSearchResults5
                                                                      .toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    auditorNames
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        auditorNamesIndex) {
                                                                  final auditorNamesItem =
                                                                      auditorNames[
                                                                          auditorNamesIndex];
                                                                  return Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'Submit',
                                                                          backgroundColor:
                                                                              Color(0xFF00FF03),
                                                                          icon:
                                                                              Icons.send,
                                                                          onPressed:
                                                                              (_) async {
                                                                            if ((auditorNamesItem.position == 'president') ||
                                                                                (auditorNamesItem.position == 'vicePresident') ||
                                                                                (auditorNamesItem.position == 'secretary') ||
                                                                                (auditorNamesItem.position == 'treasurer') ||
                                                                                (auditorNamesItem.position == 'auditor') ||
                                                                                (auditorNamesItem.position == 'businessManager') ||
                                                                                (auditorNamesItem.position == 'pio') ||
                                                                                (auditorNamesItem.position == 'representative')) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'This person is already a Candidate.',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              await auditorNamesItem.reference.update(createUsersRecordData(
                                                                                position: 'auditor',
                                                                                voteCount: 0,
                                                                                isCandidate: true,
                                                                              ));
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Successfully added',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            }

                                                                            setState(() {
                                                                              _model.presidentController?.clear();
                                                                            });
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        auditorNamesItem
                                                                            .displayName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 18.0,
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      dense:
                                                                          false,
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .presSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .vpresidentSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .secretarySwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .treasurerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .auditorSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .businessManagerSwitch =
                                                                  true;
                                                              FFAppState()
                                                                      .pioSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .representativeSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          onDoubleTap:
                                                              () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .businessManagerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          child: Text(
                                                            'BUSINESS MANAGER',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                                  fontSize:
                                                                      30.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .businessManagerSwitch ==
                                                                true)
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .businessManagerController,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.businessManagerController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    onFieldSubmitted:
                                                                        (_) async {
                                                                      await queryUsersRecordOnce()
                                                                          .then(
                                                                            (records) =>
                                                                                _model.simpleSearchResults6 = TextSearch(
                                                                              records
                                                                                  .map(
                                                                                    (record) => TextSearchItem(record, [
                                                                                      record.displayName!
                                                                                    ]),
                                                                                  )
                                                                                  .toList(),
                                                                            ).search(_model.businessManagerController.text).map((r) => r.object).toList(),
                                                                          )
                                                                          .onError((_, __) => _model.simpleSearchResults6 =
                                                                              [])
                                                                          .whenComplete(() =>
                                                                              setState(() {}));

                                                                      setState(
                                                                          () {
                                                                        FFAppState().candidateSwitcherPersisted =
                                                                            true;
                                                                      });
                                                                    },
                                                                    autofocus:
                                                                        true,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .send,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      hintText:
                                                                          'Search names here',
                                                                      hintStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    validator: _model
                                                                        .businessManagerControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        if ((FFAppState()
                                                                    .candidateSwitcherPersisted ==
                                                                true) &&
                                                            (FFAppState()
                                                                    .businessManagerSwitch ==
                                                                true))
                                                          Builder(
                                                            builder: (context) {
                                                              final businessManagerNames =
                                                                  _model
                                                                      .simpleSearchResults6
                                                                      .toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    businessManagerNames
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        businessManagerNamesIndex) {
                                                                  final businessManagerNamesItem =
                                                                      businessManagerNames[
                                                                          businessManagerNamesIndex];
                                                                  return Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'Submit',
                                                                          backgroundColor:
                                                                              Color(0xFF00FF03),
                                                                          icon:
                                                                              Icons.send,
                                                                          onPressed:
                                                                              (_) async {
                                                                            if ((businessManagerNamesItem.position == 'president') ||
                                                                                (businessManagerNamesItem.position == 'vicePresident') ||
                                                                                (businessManagerNamesItem.position == 'secretary') ||
                                                                                (businessManagerNamesItem.position == 'treasurer') ||
                                                                                (businessManagerNamesItem.position == 'auditor') ||
                                                                                (businessManagerNamesItem.position == 'businessManager') ||
                                                                                (businessManagerNamesItem.position == 'pio') ||
                                                                                (businessManagerNamesItem.position == 'representative')) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'This person is already a Candidate.',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              await businessManagerNamesItem.reference.update(createUsersRecordData(
                                                                                position: 'businessManager',
                                                                                voteCount: 0,
                                                                                isCandidate: true,
                                                                              ));
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Successfully added',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            }

                                                                            setState(() {
                                                                              _model.presidentController?.clear();
                                                                            });
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        businessManagerNamesItem
                                                                            .displayName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 18.0,
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      dense:
                                                                          false,
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .presSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .vpresidentSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .secretarySwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .treasurerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .auditorSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .businessManagerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .pioSwitch =
                                                                  true;
                                                              FFAppState()
                                                                      .representativeSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          onDoubleTap:
                                                              () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .pioSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          child: Text(
                                                            'PUBLIC INFO OFFICER',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                                  fontSize:
                                                                      30.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .pioSwitch ==
                                                                true)
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .pioController,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.pioController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    onFieldSubmitted:
                                                                        (_) async {
                                                                      await queryUsersRecordOnce()
                                                                          .then(
                                                                            (records) =>
                                                                                _model.simpleSearchResults7 = TextSearch(
                                                                              records
                                                                                  .map(
                                                                                    (record) => TextSearchItem(record, [
                                                                                      record.displayName!
                                                                                    ]),
                                                                                  )
                                                                                  .toList(),
                                                                            ).search(_model.pioController.text).map((r) => r.object).toList(),
                                                                          )
                                                                          .onError((_, __) => _model.simpleSearchResults7 =
                                                                              [])
                                                                          .whenComplete(() =>
                                                                              setState(() {}));

                                                                      setState(
                                                                          () {
                                                                        FFAppState().candidateSwitcherPersisted =
                                                                            true;
                                                                      });
                                                                    },
                                                                    autofocus:
                                                                        true,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .send,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      hintText:
                                                                          'Search names here',
                                                                      hintStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    validator: _model
                                                                        .pioControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        if ((FFAppState()
                                                                    .candidateSwitcherPersisted ==
                                                                true) &&
                                                            (FFAppState()
                                                                    .pioSwitch ==
                                                                true))
                                                          Builder(
                                                            builder: (context) {
                                                              final pioNames =
                                                                  _model
                                                                      .simpleSearchResults7
                                                                      .toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    pioNames
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        pioNamesIndex) {
                                                                  final pioNamesItem =
                                                                      pioNames[
                                                                          pioNamesIndex];
                                                                  return Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'Submit',
                                                                          backgroundColor:
                                                                              Color(0xFF00FF03),
                                                                          icon:
                                                                              Icons.send,
                                                                          onPressed:
                                                                              (_) async {
                                                                            if ((pioNamesItem.position == 'president') ||
                                                                                (pioNamesItem.position == 'vicePresident') ||
                                                                                (pioNamesItem.position == 'secretary') ||
                                                                                (pioNamesItem.position == 'treasurer') ||
                                                                                (pioNamesItem.position == 'auditor') ||
                                                                                (pioNamesItem.position == 'businessManager') ||
                                                                                (pioNamesItem.position == 'pio') ||
                                                                                (pioNamesItem.position == 'representative')) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'This person is already a Candidate.',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              await pioNamesItem.reference.update(createUsersRecordData(
                                                                                position: 'pio',
                                                                                voteCount: 0,
                                                                                isCandidate: true,
                                                                              ));
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Successfully added',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            }

                                                                            setState(() {
                                                                              _model.presidentController?.clear();
                                                                            });
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        pioNamesItem
                                                                            .displayName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 18.0,
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      dense:
                                                                          false,
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .presSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .vpresidentSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .secretarySwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .treasurerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .auditorSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .businessManagerSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .pioSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .representativeSwitch =
                                                                  true;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          onDoubleTap:
                                                              () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .representativeSwitch =
                                                                  false;
                                                              FFAppState()
                                                                      .candidateSwitcherPersisted =
                                                                  false;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .presidentController
                                                                  ?.clear();
                                                              _model
                                                                  .vicePresidentController
                                                                  ?.clear();
                                                              _model
                                                                  .secretaryController
                                                                  ?.clear();
                                                              _model
                                                                  .treasurerController
                                                                  ?.clear();
                                                              _model
                                                                  .auditorController
                                                                  ?.clear();
                                                              _model
                                                                  .businessManagerController
                                                                  ?.clear();
                                                              _model
                                                                  .pioController
                                                                  ?.clear();
                                                              _model
                                                                  .representativeController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          child: Text(
                                                            'REPRESENTATIVES',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                                  fontSize:
                                                                      30.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .representativeSwitch ==
                                                                true)
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .representativeController,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.representativeController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    onFieldSubmitted:
                                                                        (_) async {
                                                                      await queryUsersRecordOnce()
                                                                          .then(
                                                                            (records) =>
                                                                                _model.simpleSearchResults8 = TextSearch(
                                                                              records
                                                                                  .map(
                                                                                    (record) => TextSearchItem(record, [
                                                                                      record.displayName!
                                                                                    ]),
                                                                                  )
                                                                                  .toList(),
                                                                            ).search(_model.representativeController.text).map((r) => r.object).toList(),
                                                                          )
                                                                          .onError((_, __) => _model.simpleSearchResults8 =
                                                                              [])
                                                                          .whenComplete(() =>
                                                                              setState(() {}));

                                                                      setState(
                                                                          () {
                                                                        FFAppState().candidateSwitcherPersisted =
                                                                            true;
                                                                      });
                                                                    },
                                                                    autofocus:
                                                                        true,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .send,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      hintText:
                                                                          'Search names here',
                                                                      hintStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    validator: _model
                                                                        .representativeControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        if ((FFAppState()
                                                                    .candidateSwitcherPersisted ==
                                                                true) &&
                                                            (FFAppState()
                                                                    .representativeSwitch ==
                                                                true))
                                                          Builder(
                                                            builder: (context) {
                                                              final representativeNames =
                                                                  _model
                                                                      .simpleSearchResults8
                                                                      .toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    representativeNames
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        representativeNamesIndex) {
                                                                  final representativeNamesItem =
                                                                      representativeNames[
                                                                          representativeNamesIndex];
                                                                  return Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'Submit',
                                                                          backgroundColor:
                                                                              Color(0xFF00FF03),
                                                                          icon:
                                                                              Icons.send,
                                                                          onPressed:
                                                                              (_) async {
                                                                            if ((representativeNamesItem.position == 'president') ||
                                                                                (representativeNamesItem.position == 'vicePresident') ||
                                                                                (representativeNamesItem.position == 'secretary') ||
                                                                                (representativeNamesItem.position == 'treasurer') ||
                                                                                (representativeNamesItem.position == 'auditor') ||
                                                                                (representativeNamesItem.position == 'businessManager') ||
                                                                                (representativeNamesItem.position == 'pio') ||
                                                                                (representativeNamesItem.position == 'representative')) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'This person is already a Candidate.',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              await representativeNamesItem.reference.update(createUsersRecordData(
                                                                                voteCount: 0,
                                                                                isCandidate: true,
                                                                                position: 'representative',
                                                                              ));
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Successfully added',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 500),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            }

                                                                            setState(() {
                                                                              _model.presidentController?.clear();
                                                                            });
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        representativeNamesItem
                                                                            .displayName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 18.0,
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      dense:
                                                                          false,
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                      ]
                                                          .divide(SizedBox(
                                                              height: 10.0))
                                                          .around(SizedBox(
                                                              height: 10.0)),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
