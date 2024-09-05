import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crude_firebase_flutter/models.dart';

Future<void> createTask(String name, String desc, DateTime date) async {
  CollectionReference tasks = FirebaseFirestore.instance.collection('task');

  try {
    await tasks.add({
      'name': name,
      'desc': desc,
      'date': Timestamp.fromDate(date), // Convierte DateTime a Timestamp
      'createdAt': FieldValue.serverTimestamp(),
    });
    print('Task creada correctamente');
  } catch (e) {
    print('Error al crear task: $e');
  }
}

Stream<List<Task>> getTasks() {
  return FirebaseFirestore.instance
      .collection('task')
      .orderBy('createdAt', descending: true)
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Task.fromFirestore(doc)).toList());
}

Future<void> updateTask(
    String taskId, String name, String desc, DateTime date) async {
  CollectionReference tasks = FirebaseFirestore.instance.collection('task');

  try {
    await tasks.doc(taskId).update({
      'name': name,
      'desc': desc,
      'date': Timestamp.fromDate(date), // Actualiza el campo date
    });
    print('Task actualizada correctamente');
  } catch (e) {
    print('Error al actualizar task: $e');
  }
}

Future<void> deleteTask(String taskId) async {
  CollectionReference tasks = FirebaseFirestore.instance.collection('task');

  try {
    await tasks.doc(taskId).delete();
    print('Task eliminada correctamente');
  } catch (e) {
    print('Error al eliminar task: $e');
  }
}
