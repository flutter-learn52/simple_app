import 'package:flutter/material.dart';
import '../utils/data.dart';
import 'biodata.dart';

class ListMember extends StatefulWidget {
  const ListMember({super.key});

  @override
  State<ListMember> createState() => _ListMemberState();
}
// final int? indexku;

class _ListMemberState extends State<ListMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("List Member"),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(top: 10),
          child: ListTile(
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage("assets/${members[index]['profile']}"),
                    fit: BoxFit.cover),
              ),
              height: 50,
              width: 50,
            ),
            title: Text(members[index]['name']),
            onTap: () {
              final int urutan = index;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Biodata(urutan);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
