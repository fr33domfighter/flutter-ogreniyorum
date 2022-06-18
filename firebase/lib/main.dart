import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('anket')),
        ));
  }
}

class SurveyList extends StatefulWidget {
  const SurveyList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SurveyListState();
  }
}

class SurveyListState extends State {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      builder: ((context, snapshot) {
        if (!snapshot.hasData) {
          return const LinearProgressIndicator();
        } else {
          buildBody(context, snapshot.data.docs);
        }
      }),
      stream: FirebaseFirestore.instance.collection("anket").snapshots(),
    );
  }

  Widget buildBody(BuildContext context, List<DocumentSnapshot> sahteSnapshot) {
    return ListView(
      padding: EdgeInsets.only(top: 20),
      children: sahteSnapshot
          .map<Widget>((data) => buildListItem(context, data))
          .toList(),
    );
  }

  buildListItem(BuildContext context, DocumentSnapshot data) {
    final row = Anket.fromSnapshot(data);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      key: ValueKey(row.isim),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5)),
        child: ListTile(
          title: Text(row.isim),
          trailing: Text(row.oy.toString()),
          onTap: () =>
              FirebaseFirestore.instance.runTransaction((transaction) async {
            final fereshSnapshot =
                await transaction.get(row.reference); //snapshotun kedisi
            final fresh = Anket.fromSnapshot(fereshSnapshot); //anketin kendisi
            await transaction.update((row.reference), {'oy': fresh.oy + 1});
          }),
        ),
      ),
    );
  }
}

final sahteSnapshot = [
  {'isim': 'C#', 'oy': 3},
  {'isim': 'C', 'oy': 4},
  {'isim': 'Python', 'oy': 5},
  {'isim': 'Perl', 'oy': 6},
  {'isim': 'Ruby', 'oy': 7},
  {'isim': 'C++', 'oy': 8},
];

class Anket {
  late String isim;
  late int oy;
  late DocumentReference reference;
  Anket.fromMap(Map<String, dynamic> map, {required this.reference})
      : assert(map['isim'] != null),
        assert(map['oy'] != null),
        isim = map['isim'],
        oy = map['oy'];

  Anket.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
}
