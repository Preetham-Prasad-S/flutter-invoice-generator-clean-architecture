import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

class TemplateInvoiceDetail {
  final String id;
  final TextEditingController cellValue;
  final TextEditingController inputValue;

  TemplateInvoiceDetail({
    required this.id,
    required this.cellValue,
    required this.inputValue,
  });

  @override
  String toString() {
    return "Template Invoice Detail {id : $id, cellValue : ${cellValue.text.trim()},  inputValue : ${inputValue.text.trim()}}";
  }
}

class TemplateDetailsNotifier extends Notifier<List<TemplateInvoiceDetail>> {
  @override
  List<TemplateInvoiceDetail> build() {
    ref.onDispose(() => dispose());

    return [];
  }

  void dispose() {
    state.forEach((element) {
      element.cellValue.dispose();
      element.inputValue.dispose();
    });
  }

  void clear() {
    state = [];
  }

  void addDetails() {
    final detailId = Uuid();

    state = [
      ...state,
      TemplateInvoiceDetail(
        id: detailId.v4(),
        cellValue: TextEditingController(),
        inputValue: TextEditingController(),
      ),
    ];
  }

  void deleteDetails(String id) {
    final TemplateInvoiceDetail deletedDetail =
        (state.where((element) => element.id == id).first);

    deletedDetail.cellValue.dispose();
    deletedDetail.inputValue.dispose();
    state = state.where((element) => element.id != deletedDetail.id).toList();
  }

  Map<String, dynamic> getDetails() {
    Map<String, dynamic> templateDetails = {};

    if (!state.isEmpty) {
      for (int i = 0; i < state.length; i++) {
        templateDetails["${state[i].cellValue.text.trim()}"] =
            state[i].inputValue.text.trim();
      }

      return templateDetails;
    }
    return {};
  }
}
