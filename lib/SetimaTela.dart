import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetimaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        title:Text('CUIDE DE SUA SAUDE',
        style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20,20,20,20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(
              color: Colors.grey, width: 1
              ),
            borderRadius: BorderRadius.all( 
              Radius.circular(10)
              ),
            ),
            child: Column(
            children: [
              Text('Evitar o consumo de doces.',
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.justify,
              ),

              SizedBox(height: 20), 

              Text('Reduzir o consumo de álcool.',
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.justify),

              SizedBox(height: 20), 

              Text('Não ficar mais de 3 horas sem comer.',
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.justify),

              SizedBox(height: 20), 

              Text('Manter o peso ideal.',
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.justify), 

              SizedBox(height: 20), 

              Text('Eliminar o uso do cigarro.',
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.justify), 

              SizedBox(height: 20), 

              Text('Controlar a pressão arterial.',
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.justify),

              SizedBox(height: 20), 

              Text('Praticar atividade física regular.',
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.justify),  
              ]
            )
          ),
        ],
      ),
    );  
  }
}

