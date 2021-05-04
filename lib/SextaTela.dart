
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Alimentos.dart';


class SextaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
         automaticallyImplyLeading: true,
        title:Text('GRUPOS DE ALIMENTOS',
        style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      
      body: SingleChildScrollView(
          child: Column(
            children: [
              AlimentosWidget('Proteinas - Origem Animal',
              'Esses alimentos são fontes de proteína de origem animal. '+
              'Os alimentos deste grupo têm como característica serem ricos em ferro e vitaminas B6 e B12, prevenindo anemias. '+
              'Os principais alimentos deste grupo são: peixe, frango, carne, ovos, etc.',
              'lib/imagen/Proteinas.png'),

              AlimentosWidget('Carboidratos',
              'Esses alimentos fornecem energia, pois ao serem consumidos são convertidos em açúcar no sangue. '+
              'O consumo na forma integral é recomendado pelo número de fibras, vitaminas e minerais que deixam essa absorção mais lenta. '+
              'As principais fontes de carboidrato são: arroz, pão, batata, massa, mandioca, cereais, etc. ',
              'lib/imagen/Carboidratos.png'),
              
              AlimentosWidget('Verduras e Legumes',
              'Esses alimentos são fontes de fibras, vitaminas e minerais que ajudam no controle e funcionamento do corpo. '+
              'O consumo de verduras e legumes melhora o hábito intestinal. '+
              'Alguns alimentos deste grupo são: brócolis, couve, repolho, abobrinha, etc. ',
              'lib/imagen/Legumes.jpg'),
              
              AlimentosWidget('Frutas',
              'As frutas estão ao lado das verduras e legumes, representando outro tipo de fonte de fibras, vitaminas e minerais. '+
              'A frutose (açúcar da fruta) aumenta o nível de açúcar no sangue de forma rápida. '+
              'Alguns exemplos de frutas são: abacaxi, maçã, banana, kiwi, caju, acerola, etc. ',
              'lib/imagen/Frutas.png'),
              
              AlimentosWidget('Leguminosas e oleaginosas',
              'Esses alimentos são fontes de proteína vegetal. '+
              'Também são excelentes fontes de fibras. '+
              'Compõem esse grupo: feijão, soja, lentilha, grão de bico, castanhas etc. ',
              'lib/imagen/Leguminosas.png'),

              AlimentosWidget('Óleos e Gorduras',
              'Os alimentos deste grupo são fontes de energia e são responsáveis pelo transporte de vitaminas do complexo B. '+
              'São ricos em calorias e seu consumo deve ser controlado. '+
              'São alimentos desse grupo: azeite, manteiga, óleo de soja, etc. ',
              'lib/imagen/Oleos.jpg'),

              AlimentosWidget('Açúcares e Doces',
              'São alimentos ricos em carboidratos simples, não possuem fibras e apresentam poucos nutrientes. '+
              'Seu consumo deve ser moderado. '+
              'Os alimentos que compõem esse grupo são: açúcar, mel, chocolate, sorvete, bolo, etc. ',
              'lib/imagen/Doces.jpg'),

              AlimentosWidget('Leite e Derivados',
              'O leite e seus derivados são uma excelente fonte de cálcio, que é essencial para a constituição óssea e dos dentes. '+
              'Além disso, também fornecem proteínas ao organismo. '+
              'Os principais alimentos deste grupo são: queijo, leite, iogurtes, etc. ',
              'lib/imagen/Leite.jpg'),
            ]
          ),
      )
    );
  }
}



