import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'create_partner2_widget.dart' show CreatePartner2Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatePartner2Model extends FlutterFlowModel<CreatePartner2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for selectAddressTextField widget.
  FocusNode? selectAddressTextFieldFocusNode;
  TextEditingController? selectAddressTextFieldController;
  String? Function(BuildContext, String?)?
      selectAddressTextFieldControllerValidator;
  // Stores action output result for [Backend Call - API (Address)] action in selectAddressTextField widget.
  ApiCallResponse? apiResultAddress;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    selectAddressTextFieldFocusNode?.dispose();
    selectAddressTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
