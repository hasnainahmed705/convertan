import 'dart:io';
import 'dart:async';
import 'package:convertan_app/Screens/TopConverters.dart';
import 'package:convertan_app/Screens/menuItems.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf_text/pdf_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedMenu;
  File? selectedPdf;
  bool isConverting = false;

  Future<void> selectAndConvertPdf() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        selectedPdf = File(result.files.first.path!);
        isConverting = true;
      });

      // Read the PDF file and extract its text content
      PDFDoc pdfDoc = await PDFDoc.fromPath(selectedPdf!.path);
      String pdfText = await pdfDoc.text;

      // Create a Word document and write the extracted text
      Directory tempDir = await getTemporaryDirectory();
      File tempWordFile = File('${tempDir.path}/converted_word.docx');
      await tempWordFile.writeAsString(pdfText);

      // Open the converted file with the default app
      await OpenFile.open(tempWordFile.path);

      setState(() {
        isConverting = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          elevation: 5.0,
          child: Column(
            children: [
              ListTile(
                hoverColor: Colors.green,
                selectedColor: Colors.white,
                selectedTileColor: Colors.green.shade900,
                onTap: () {},
                title: Text(
                  "Categories",
                  style: TextStyle(color: Colors.white),
                ),
                tileColor: Colors.blue.shade700,
                dense: true,
                leading: Icon(Icons.category_outlined),
                iconColor: Colors.white,
              ),
              Divider(
                height: 1.0,
              ),
              ListTile(
                hoverColor: Colors.green,
                selectedColor: Colors.white,
                selectedTileColor: Colors.green.shade900,
                onTap: () {},
                title: Text(
                  "Terms & Conditions",
                  style: TextStyle(color: Colors.white),
                ),
                tileColor: Colors.blue.shade700,
                dense: true,
                leading: Icon(Icons.receipt_long_outlined),
                iconColor: Colors.white,
              ),
              Divider(
                height: 1.0,
              ),
              ListTile(
                hoverColor: Colors.green,
                selectedColor: Colors.white,
                selectedTileColor: Colors.green.shade900,
                onTap: () {},
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(color: Colors.white),
                ),
                tileColor: Colors.blue.shade700,
                dense: true,
                leading: Icon(Icons.policy_outlined),
                iconColor: Colors.white,
              ),
              Divider(
                height: 1.0,
              ),
              ListTile(
                hoverColor: Colors.green,
                selectedColor: Colors.white,
                selectedTileColor: Colors.green.shade900,
                onTap: () {},
                title: Text(
                  "Contact Us",
                  style: TextStyle(color: Colors.white),
                ),
                tileColor: Colors.blue.shade700,
                dense: true,
                leading: Icon(Icons.contact_support_outlined),
                iconColor: Colors.white,
              ),
              Divider(
                height: 1.0,
              ),
              ListTile(
                hoverColor: Colors.green,
                selectedColor: Colors.white,
                selectedTileColor: Colors.green.shade900,
                onTap: () {},
                title: Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                tileColor: Colors.blue.shade700,
                dense: true,
                leading: Icon(Icons.info_outline),
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
        appBar: AppBar(
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info))],
            centerTitle: true,
            elevation: 5.0,
            title: Text("Convertan"),
            backgroundColor: Colors.blue.shade700),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 50),
                  child: Text(
                    "Top Converters",
                    style:
                        TextStyle(color: const Color.fromARGB(255, 77, 77, 77)),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Divider(
                  height: 1.0,
                  color: Colors.green,
                  indent: 17.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: CardConverter.getConverters(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Divider(
                    height: 1.0,
                    color: Colors.green,
                    indent: 17.0,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SizedBox(
                      width: 400,
                      child: DropdownButtonFormField<String>(
                        dropdownColor: Colors.white,
                        value: selectedMenu,
                        isExpanded: true,
                        menuMaxHeight: 400,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5.0),
                            fillColor: Colors.green,
                            hoverColor: Colors.blue.shade400,
                            hintText: "Select Converter",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    color: Colors.green, width: 1.0))),
                        style: TextStyle(color: Colors.white, fontSize: 10),
                        items: DropdownMenuItems.getMenuItems(selectedMenu),
                        onChanged: (newValue) {
                          setState(() {
                            selectedMenu = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: selectedMenu != null
                      ? Card(
                          color: Colors.blue.shade700,
                          elevation: 10.0,
                          shadowColor: Colors.blue.shade700,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Container(
                            height: 350,
                            child: Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30.0, right: 30.0, left: 30.0),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Your privacy is our priority. We never store uploaded files, ensuring complete data deletion after conversion",
                                      style: TextStyle(
                                          letterSpacing: 1,
                                          color: Colors.white,
                                          fontSize: 10),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5.0, right: 30.0, left: 30.0),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Your uploaded files are ephemeral, leaving no digital footprint after conversion",
                                      style: TextStyle(
                                          letterSpacing: 1,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 10),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                        color:
                                            Color.fromARGB(255, 223, 223, 223),
                                        elevation: 10.0,
                                        child: Container(
                                          height: 150,
                                          width: 300,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: selectedPdf != null
                                                    ? Image.file(
                                                        selectedPdf!,
                                                        height: 100,
                                                        width: 100,
                                                      )
                                                    : Image(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage(
                                                            "lib/assets/images/empty.png")),
                                              ),
                                              Center(
                                                  child: Text(
                                                textAlign: TextAlign.center,
                                                "No Files Upload yet!",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 131, 131, 131),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                            ],
                                          ),
                                        )),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      width: 300,
                                      height: 40,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                              elevation:
                                                  MaterialStateProperty.resolveWith(
                                                      (states) => 10.0),
                                              shape: MaterialStateProperty.resolveWith(
                                                  (states) =>
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  0))),
                                              backgroundColor:
                                                  MaterialStateColor.resolveWith(
                                                      (states) =>
                                                          Colors.green)),
                                          onPressed: isConverting
                                              ? null
                                              : selectAndConvertPdf,
                                          child: Text(
                                            "UPLOAD",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      : Center(
                          child: Padding(
                          padding: const EdgeInsets.all(100.0),
                          child: Text(
                            "Select Converter First!",
                            style: TextStyle(
                                color: Color.fromARGB(255, 87, 87, 87),
                                fontSize: 15),
                          ),
                        )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
