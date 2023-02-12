import 'package:flutter/material.dart';

import '../frontend/frontend.dart';

class Data{
  final String Imagepath;
  final String title;

  Data(this.Imagepath, this.title);
}

List<Data> plant=[
  Data('assets/images/dg.png', 'Green Plant'),
  Data('assets/images/dg_1.png', 'Flower'),
  Data('assets/images/dg_2.png', 'Indoor Plant'),
];