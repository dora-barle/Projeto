import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AlimentosWidget extends StatelessWidget {

  final String titulo;
  final String descricao;
  final String foto;
  AlimentosWidget(this.titulo, this.descricao, this.foto);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      
      child: Center(
        child: Column(
          children: [
            Text(titulo,           
            style: GoogleFonts.montserrat(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10), 
            Text(descricao,
            textAlign: TextAlign.justify,
            style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
            ),
            SizedBox(height: 5), 
            Image.asset(foto, height: 250),
            ],
        )
      ),
    );
  }
}