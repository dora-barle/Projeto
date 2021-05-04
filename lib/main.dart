import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'TelaPrincipal.dart';
import 'SegundaTela.dart';
import 'TerceiraTela.dart';
import 'QuartaTela.dart';
import 'QuintaTela.dart';
import 'SextaTela.dart';
import 'SetimaTela.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diabetes',
      home: TelaPrincipal(),
      
      initialRoute: '/Tela1',
      routes: {
        '/Tela1': (context)=> TelaPrincipal(),
        '/Tela2': (context)=> SegundaTela(),
        '/Tela3': (context)=> TerceiraTela(),
        '/Tela4': (context)=> QuartaTela(),
        '/Tela5': (context)=> QuintaTela(),
        '/Tela6': (context)=> SextaTela(),
        '/Tela7': (context)=> SetimaTela(),
        },

      //Tema do App
      theme: ThemeData(
        primaryColor: Colors.lightBlue[700],
        backgroundColor: Colors.grey[100],
        
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.normal
          ),
          headline2: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.normal
          )

        )
      )
    )
  );
}


