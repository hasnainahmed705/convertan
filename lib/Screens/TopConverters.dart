import 'package:flutter/material.dart';

class CardConverter {
  static getConverters() {
    return [
      Container(
        width: 150,
        height: 80,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 40,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/word.png")),
                ),
                Text(
                  "PDF to WORD",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 150,
        height: 80,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 35,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/zip.png")),
                ),
                Text(
                  "RAR to ZIP",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 150,
        height: 80,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 45,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/pdf.png")),
                ),
                Text(
                  "WORD to PDF",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 150,
        height: 80,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 40,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/jpg.png")),
                ),
                Text(
                  "PNG to JPG",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 150,
        height: 80,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 40,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/ico.png")),
                ),
                Text(
                  "SVG to ICO",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 150,
        height: 80,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 40,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/mp3.png")),
                ),
                Text(
                  "MP4 to MP3",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 150,
        height: 80,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 40,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/mp4.png")),
                ),
                Text(
                  "MKV to MP4",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 150,
        height: 80,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 40,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/ai.png")),
                ),
                Text(
                  "SVG to AI",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 150,
        height: 80,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 40,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/csv.png")),
                ),
                Text(
                  "XLS to CSV",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 150,
        height: 80,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 40,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/json.webp")),
                ),
                Text(
                  "SQL to JSON",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 150,
        height: 80,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 40,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/mdf.png")),
                ),
                Text(
                  "SDF to MDF",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                )
              ],
            ),
          ),
        ),
      ),
    ];
  }
}
