import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: LayoutRulesExample()));
}

class LayoutRulesExample extends StatelessWidget {
  const LayoutRulesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tiga Aturan Layout Flutter")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyPages1(),
            Divider(thickness: 2),
            MyPages2(),
            Divider(thickness: 2),
            MyPages3(),
          ],
        ),
      ),
    );
  }
}

class MyPages1 extends StatelessWidget {
  const MyPages1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "1 & 2. Aturan Constraints (Batas) dan Size (ukuran)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            //Contoh Aturan 1 dan 2
            ConstrainedBox(
              // Induk Memberikan Constraint kebawah
              constraints: const BoxConstraints(
                minWidth: 100,
                maxWidth: 200,
                minHeight: 100,
                maxHeight: 200,
              ),
              // Child mencoba menentukan ukuan (up)
              child: Container(
                width:
                    500, //Mencoba lebih besar max width melebihi parent (gagal)
                height: 50, //mencoba lebih kecil dari min height parent (gagal)
                color: Colors.blue,
                child: const Text(
                  "Saya minta 500x50, tapi maksimal dapatnya 200x100",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
