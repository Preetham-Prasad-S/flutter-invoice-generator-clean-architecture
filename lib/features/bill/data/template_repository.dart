import 'package:app_prototype/features/bill/data/models/template_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TemplateRepository {
  Future<void> uploadTemplate(TemplateModel template) async {
    CollectionReference templateCollection = FirebaseFirestore.instance
        .collection("template");

    await templateCollection.add(template.toJson());

    print(templateCollection.id);

    final DocumentSnapshot fileUrl =
        await FirebaseFirestore.instance
            .collection('template')
            .doc(templateCollection.id)
            .get();

    print(fileUrl);
  }
}
