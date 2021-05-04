import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class QuartaTela extends StatefulWidget {
  @override
  _QuartaTelaState createState() => _QuartaTelaState();
}

class _QuartaTelaState extends State<QuartaTela> {
    
    CalendarFormat _calendarFormat = CalendarFormat.month;
    DateTime _focusedDay = DateTime.now();
    DateTime _selectedDay;
              
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar:AppBar(
        automaticallyImplyLeading: true,
        title:Text('REGISTRAR GLICEMIA',
        style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        ),

        body: Container(
          padding: EdgeInsets.all(10),

          child: TableCalendar(
            firstDay:DateTime.utc(2018,4,30,12),
            lastDay: DateTime.utc(2050,4,30,12),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
            },
            calendarStyle: CalendarStyle(             
              defaultTextStyle: GoogleFonts.montserrat(color: Colors.black, fontSize: 20),
              weekendTextStyle: GoogleFonts.montserrat(color: Colors.black54, fontSize: 20),
              outsideTextStyle: GoogleFonts.montserrat(color: Colors.black38, fontSize: 16),
            ),

            headerStyle: HeaderStyle(
              titleTextStyle: GoogleFonts.montserrat(color: Colors.black, fontSize: 20),
              formatButtonTextStyle: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
              formatButtonDecoration: BoxDecoration(
                color: Colors.lightBlue[500],
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            
            calendarBuilders: CalendarBuilders(
              selectedBuilder: (context, date, events) => Container(
                margin: const EdgeInsets.all(2.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.teal[400],
                  borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    date.day.toString(),
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20),
                  ),
              ),
              
              todayBuilder: (context, date, events) => Container(
                margin: const EdgeInsets.all(2.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    date.day.toString(),
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20),
                  ),
              )
            ),

            //FALTA ADICIONAR O EVENTO DE REGISTRAR A GLICEMIA AO DIA SELECIONADO.

            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            }, 
          ),         
        )
      );
    }
}
