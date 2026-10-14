import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  //Kunci Global Form
  final _formKey = GlobalKey<FormState>();

  //Variable TextBox
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _tglLahirController = TextEditingController();
  
  var _outputName = '';
  var _outputDate = '';

  @override
  void dispose() {
    //Menghapus inputan yang sudah diisi
    _nameController.dispose();
    _tglLahirController.dispose();

    //Mengeksekusi Method Dispose
    super.dispose();
  }

  void _submitForm() {
    setState(() {
      _outputName = _nameController.text;
      _outputDate = _tglLahirController.text;
    });

    print("Nama Lengkap : ${_nameController}");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Nama Lengkap : ${_nameController.text}")),
    );

    //Memanggil Method Clear
    _clearInput();
  }

  void _clearInput() {
    //Membersihkan isi textbox
    _nameController.clear();  
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('My Form Page')),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Masukan Nama Anda',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return "Nama Tidak Boleh Kosong";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                    _submitForm();  
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.green, width: 1),
                  ),
                  child: Text('Simpan'),
                 ),
                 Text(
                  'Nama : ${_outputName.isEmpty ? "-" : _outputName}',
                  style: const TextStyle(fontSize: 14),
                 )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
