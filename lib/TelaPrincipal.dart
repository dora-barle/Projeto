import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  
  @override
  Widget build(BuildContext context) {

      return Scaffold( 
          appBar:AppBar(
             automaticallyImplyLeading: true,
            title:Text('DIABETES',
            style: Theme.of(context).textTheme.headline1,
            ),
            backgroundColor: Theme.of(context).primaryColor,
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                    Navigator.pushNamed(context, '/Tela3');},
              child: Icon(Icons.info, size: 40)
            ),
          ),
            
          backgroundColor: Theme.of(context).backgroundColor,
          body: Column(
            
            children:[
              SizedBox(height: 20),
              Container(
                child: Icon(Icons.person, size: 120, color: Theme.of(context).primaryColor),
                alignment: Alignment.center,
              ),
                        
              SizedBox(height: 20),          
              Container(   
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.80, 
                height: 60,
                padding: EdgeInsets.only(
                  top:2, left: 16, right: 16, bottom:2
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: Theme.of(context).textTheme.headline2,
                  decoration: InputDecoration(
                    labelText: "Usuário",
                    hintText: "Entre seu Usuário",
                    labelStyle: TextStyle(color:Colors.black87),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                   )
                  )
                ),
              ),
                
              SizedBox(height: 20), 
              Container(   
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.80, 
                height: 60,
                padding: EdgeInsets.only(
                  top:2, left: 16, right: 16, bottom:2
                ),
                
                child: TextFormField(  
                  keyboardType: TextInputType.text,
                   style: Theme.of(context).textTheme.headline2,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    hintText: "Entre sua senha",
                    labelStyle: TextStyle(color:Colors.black87),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                ),
              ),
              
              SizedBox(height: 20),
              Container(   
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () { Navigator.pushNamed(context, '/Tela2');},
                  child: Text('Entrar',
                  style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20),
                                   
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      padding:EdgeInsets.symmetric(horizontal:30,vertical:20)
                  ),
                ),
              ),
    
              //Ainda não foram craidas as telas de navegacao para o botoes:
              //Esqueceu a senha?
              //Criar uma conta
              
              SizedBox(height: 20),
              Container(   
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () { Navigator.pushNamed(context, '/Tela2');},
                  child: Text('Esqueceu sua senha?',
                  style: GoogleFonts.montserrat(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey[100],
                  ),
                ),
              ),
              
              SizedBox(height: 100),
              Container(   
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () { Navigator.pushNamed(context, '/Tela2');},
                  child: Text('Não possui uma conta? Cadastre-se',
                  style: GoogleFonts.montserrat(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey[100],
                  ),
                ),
              ),
            ]
          )
      );
  }
}
    
