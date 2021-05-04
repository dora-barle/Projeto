import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: true,
        title:Text('SOBRE',
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
              Text('Este aplicativo tem como objetivo ajudar as pessoas com diabetes a monitorar a glicemia, '+
              'proporcionando um calendário para registrar os valores obtidos pelo glicosímetro. Manter o melhor '+
              'controle possível da Glicemia permitirá aos diabéticos uma melhor qualidade de vida.'+
              ' O aplicativo também proporcionará um espaço para registrar os diferentes medicamentos utilizados '+
              'pelos usuários. Alguns pacientes usam muitos medicamentos receitados por diferentes médicos, e por '+
              'este motivo alguns medicamentos podem interferir com outros, afetando o tratamento e em último '+
              'caso até causando novas complicações ao paciente. '+
              'Uma das principais formas de controlar a glicemia é o controle do consumo dos alimentos durante as '+
              'refeições. Assim, com o intuito de ajudar a os diabéticos a conhecer e reconhecer quais alimentos '+
              'devem ser consumidos o controle da glicemia, o aplicativo proporcionara informações sobre os grupos '+
              'alimentícios e como devem ser consumidos (Em breve).',
              style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
              textAlign: TextAlign.justify),  
              ]
            )
          ),

        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20,20,20,20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.grey, width: 1
              ),
          borderRadius: BorderRadius.all( 
            Radius.circular(10)
              ),
            ),

          child: Row(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.fromLTRB(10, 10,10,10),               
                child: Image.asset('lib/imagen/Dora.jpg'),
              ),

              Container(
                alignment: Alignment.center,
                width: 280,
                height: 200,
                margin: EdgeInsets.fromLTRB(10,10,10,10),
                child: Text('Desenvolvedora: Dora Yovana Barrios Leal. '+
                'Estudante de 4 semestre do curso Análise e Desenvolvimento de Sistemas da Fatec – Ribeirão Preto.',
                style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.justify),
                ),
              ]
            )
          ),  
        ],
    ),
  );
 }
}
