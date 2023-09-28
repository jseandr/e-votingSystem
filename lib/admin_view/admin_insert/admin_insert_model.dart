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

class AdminInsertModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for president widget.
  TextEditingController? presidentController;
  String? Function(BuildContext, String?)? presidentControllerValidator;
  List<UsersRecord> simpleSearchResults1 = [];
  // State field(s) for vicePresident widget.
  TextEditingController? vicePresidentController;
  String? Function(BuildContext, String?)? vicePresidentControllerValidator;
  List<UsersRecord> simpleSearchResults2 = [];
  // State field(s) for secretary widget.
  TextEditingController? secretaryController;
  String? Function(BuildContext, String?)? secretaryControllerValidator;
  List<UsersRecord> simpleSearchResults3 = [];
  // State field(s) for treasurer widget.
  TextEditingController? treasurerController;
  String? Function(BuildContext, String?)? treasurerControllerValidator;
  List<UsersRecord> simpleSearchResults4 = [];
  // State field(s) for auditor widget.
  TextEditingController? auditorController;
  String? Function(BuildContext, String?)? auditorControllerValidator;
  List<UsersRecord> simpleSearchResults5 = [];
  // State field(s) for businessManager widget.
  TextEditingController? businessManagerController;
  String? Function(BuildContext, String?)? businessManagerControllerValidator;
  List<UsersRecord> simpleSearchResults6 = [];
  // State field(s) for pio widget.
  TextEditingController? pioController;
  String? Function(BuildContext, String?)? pioControllerValidator;
  List<UsersRecord> simpleSearchResults7 = [];
  // State field(s) for representative widget.
  TextEditingController? representativeController;
  String? Function(BuildContext, String?)? representativeControllerValidator;
  List<UsersRecord> simpleSearchResults8 = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    presidentController?.dispose();
    vicePresidentController?.dispose();
    secretaryController?.dispose();
    treasurerController?.dispose();
    auditorController?.dispose();
    businessManagerController?.dispose();
    pioController?.dispose();
    representativeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
