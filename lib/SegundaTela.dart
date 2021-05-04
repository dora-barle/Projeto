import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        title:Text('MENU',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: ListView(
        children: [
            ListTile(    
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),            
              tileColor: Colors.green[200],
              leading: Icon(Icons.local_hospital, size: 60),
              title: Text('REGISTRAR GLICEMIA', textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 22),
              ),
              subtitle: Text('Monitore sua glicemia', textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 30.0, horizontal:16.0),
              onTap: () {
                Navigator.pushNamed(context, '/Tela4');
              },
              hoverColor: Colors.green[600],
            ),
              
            SizedBox(height: 40),
                      
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.red[200],
              leading: Icon(Icons.local_pharmacy, size: 60),
              title: Text('REGISTRAR MEDICAMENTOS', textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 22),
              ),
              subtitle: Text('Controle seus os medicamentos', textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 30.0, horizontal:16.0),
              onTap: () {
                Navigator.pushNamed(context, '/Tela5');
              },
              hoverColor: Colors.red[500]
            ),
            
            SizedBox(height: 40),
            
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.lightBlue[200],
              leading: Icon(Icons.food_bank, size: 60),
              title: Text('INFORMAÇÃO SOBRE ALIMENTOS', textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 22),
              ),
              subtitle: Text('Informese sobre os grupos alimentícios', textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
                ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 30.0, horizontal:16.0),
              onTap: () {
                Navigator.pushNamed(context, '/Tela6');
              },
                hoverColor: Colors.lightBlue[500],
              ),

            SizedBox(height: 40),
            
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.yellow[200],
              title: Text('SAIR', textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 22),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 10.0, horizontal:16.0),
              onTap: () {
                Navigator.pushNamed(context, '/Tela7');
              },
                hoverColor: Colors.yellow[600],
            ),
          ],
        ),
      ),
    );
  }
}
