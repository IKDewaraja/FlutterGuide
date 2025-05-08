import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  Future<void> addStudent(Map<String, dynamic> studentInfo, String id) async {
    try {
      await FirebaseFirestore.instance
          .collection('Students')
          .doc(id)
          .set(studentInfo);
    } catch (e) {
      print('Error adding student: $e');
    }
  }

  Future<void> updateStudentDetails(
    Map<String, dynamic> studentInfo,
    String id,
  ) async {
    try {
      await FirebaseFirestore.instance
          .collection('Students')
          .doc(id)
          .update(studentInfo);
    } catch (e) {
      print('Error updating student: $e');
    }
  }

  Future<void> deleteStudent(
    Map<String, dynamic> studentInfo,
    String id,
  ) async {
    try {
      await FirebaseFirestore.instance
          .collection('Students')
          .doc(id)
          .delete();
    } catch (e) {
      print('Error deleting student: $e');
    }
  }

  
}
