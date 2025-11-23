import 'package:app_prototype/core/widgets/loading_overlay_widget.dart';
import 'package:app_prototype/features/template/dependency_injection.dart';
import 'package:app_prototype/features/template/presentation/providers/upload_template_provider/upload_template_state.dart';
import 'package:app_prototype/features/template/presentation/widgets/custom_submit_button_widget.dart';
import 'package:app_prototype/features/template/presentation/widgets/custom_template_file_details_widget.dart';
import 'package:app_prototype/features/template/presentation/widgets/custom_template_invoice_detail_body_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../../core/widgets/custom_title_widget.dart';

class UploadTemplateScreen extends ConsumerStatefulWidget {
  const UploadTemplateScreen({super.key});

  @override
  ConsumerState<UploadTemplateScreen> createState() =>
      _UploadTemplateScreenState();
}

class _UploadTemplateScreenState extends ConsumerState<UploadTemplateScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late final TextEditingController templateNameController;

  @override
  void initState() {
    super.initState();
    templateNameController = TextEditingController();
  }

  @override
  void dispose() {
    templateNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final uploadTemplate = ref.watch(uploadTemplateNotifierProvider);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,

          colors: [
            const Color.fromARGB(255, 255, 255, 255),
            const Color.fromARGB(255, 201, 211, 255),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Column(
              children: [
                // Page Title
                CustomTitleWidget(
                  onPressed: () => Navigator.of(context).pop(),
                  buttonIcon: Ionicons.exit_outline,
                  titleText: "Add Company Invoice",
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: _UploadTemplateBodyWidget(
                        templateNameController: templateNameController,
                      ),
                    ),
                  ),
                ),

                CustomSubmitButtonWidget(
                  formKey: formKey,
                  templateNameController: templateNameController,
                ),
              ],
            ),
            if (uploadTemplate is UploadLoadingTemplate) LoadingOverlayWidget(),
          ],
        ),
      ),
    );
  }
}

class _UploadTemplateBodyWidget extends StatelessWidget {
  _UploadTemplateBodyWidget({required this.templateNameController});

  final TextEditingController templateNameController;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.width;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(height: 15),
          CustomTemplateFileDetailsWidget(
            screenWidth: screenWidth,
            templateNameController: templateNameController,
          ),
          CustomTemplateInvoiceDetailBodyWidget(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
        ],
      ),
    );
  }
}
