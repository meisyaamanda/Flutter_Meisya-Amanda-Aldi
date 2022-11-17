import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';

const uid = 'abc';

void main() {
  test('Add adds data', () async {
    final instance = FakeFirebaseFirestore();
    final doc1 = await instance.collection('booking').add({
      'alamat': 'depok',
      'uid': uid,
    });
    expect(doc1.id.length, greaterThanOrEqualTo(20));
    expect(instance.dump(), equals('''{
      "booking": {
        "${doc1.id}":{ \n
        "alamat":"depok",
        "uid":"abc"
      }
    }
  }'''));
  });
}
