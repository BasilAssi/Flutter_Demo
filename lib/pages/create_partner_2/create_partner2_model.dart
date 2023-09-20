import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatePartner2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for firstName widget.
  final firstNameKey = GlobalKey();
  TextEditingController? firstNameController;
  String? firstNameSelectedOption;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for LastName widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for mobileNumber widget.
  TextEditingController? mobileNumberController;
  String? Function(BuildContext, String?)? mobileNumberControllerValidator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for IDNumber widget.
  TextEditingController? iDNumberController;
  String? Function(BuildContext, String?)? iDNumberControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    lastNameController?.dispose();
    mobileNumberController?.dispose();
    emailAddressController?.dispose();
    iDNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
