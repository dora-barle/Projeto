
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class QuintaTela extends StatefulWidget {
  @override
  _QuintaTelaState createState() => _QuintaTelaState();
}

class _QuintaTelaState extends State<QuintaTela> {

  var lista = [];
  var txtMedicamento = TextEditingController();
  var txtDialogo = TextEditingController();
 
  @override
  void initState() {
    lista.add('Ibuprofeno - 1 comprimido por dia');
    lista.add('Xarelto 20mg - 1 comprimido por dia');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: true,
        title:Text('REGISTRAR MEDICAMENTOS',
        style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),

       body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: txtMedicamento,
                    style: GoogleFonts.montserrat(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                    labelText: 'Adicionar Medicamentos',
                    labelStyle: GoogleFonts.montserrat(color: Colors.cyan[900], fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.grey[800]),
                  onPressed: () {
                    setState(() {
                      if (txtMedicamento.text.isNotEmpty) {
                        lista.add(txtMedicamento.text);
                        txtMedicamento.clear();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Medicamento adicionado com sucesso!'),
                          duration: Duration(seconds: 2),
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Você precisa definir um medicamento.'),
                          duration: Duration(seconds: 2),
                          
                        ));
                      }
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      lista[index],
                      style: GoogleFonts.montserrat(color: Colors.black, fontSize: 20),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, size: 30, color: Colors.grey[800]),
                      onPressed: () {
                        setState(() {
                          lista.removeAt(index);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Medicamento removido com sucesso.', style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),),
                            duration: Duration(seconds: 2),
                          ));
                        });
                      },
                    ),
                  );
                },

                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.cyan[900],
                    thickness: 1,
                  );
                },
                itemCount: lista.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 40,),
        backgroundColor: Colors.indigo[600],
        onPressed: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Adicionar Medicamentos',  style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),),
                  content: TextField(
                    controller: txtDialogo,
                    style: GoogleFonts.montserrat(color: Colors.black, fontSize: 20),
                   
                    decoration: InputDecoration(),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            if (txtDialogo.text.isNotEmpty) {
                              lista.add(txtDialogo.text);
                              txtDialogo.clear();

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('Medicamento adicionado com sucesso!',  style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),),
                                duration: Duration(seconds: 2),
                              ));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content:
                                    Text('Você precisa definir uma Medicamento.',  style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),),
                                duration: Duration(seconds: 2),
                              ));
                            }
                          });
                          Navigator.pop(context);
                        },
                        child: Text('OK', style: GoogleFonts.montserrat(color: Colors.blue, fontSize: 16),)
                    ),

                    TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      child: Text('CANCELAR',  style: GoogleFonts.montserrat(color: Colors.blue, fontSize: 16),),
                                       
                    )
                  ],
                );
              });
        },
      ),
    );
  }      
}

 