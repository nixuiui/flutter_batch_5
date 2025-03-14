import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final footballPlayers = [
    {
      "name": "C. Ronaldo",
      "club": "Al-Nasr",
      "country": "Portugal"
    },
    {
      "name": "L. Messi",
      "club": "Inter Miami",
      "country": "Argentina"
    },
    {
      "name": "E. Haaland",
      "club": "Manchester City",
      "country": "Norway"
    },
    {
      "name": "K. Mbappe",
      "club": "Paris Saint-Germain",
      "country": "France"
    },
    {
      "name": "Mohamed Salah",
      "club": "Liverpool",
      "country": "Egypt"
    },
    {
      "name": "Vinicius Jr",
      "club": "Real Madrid",
      "country": "Brazil"
    },
    {
      "name": "J. Bellingham",
      "club": "Real Madrid",
      "country": "England"
    },
    {
      "name": "Bruno Fernandes",
      "club": "Manchester United",
      "country": "Portugal"
    },
    {
      "name": "K. De Bruyne",
      "club": "Manchester City",
      "country": "Belgium"
    },
    {
      "name": "V. van Dijk",
      "club": "Liverpool",
      "country": "Netherlands"
    },
    {
      "name": "T. Kroos",
      "club": "Real Madrid",
      "country": "Germany"
    },
    {
      "name": "H. Kane",
      "club": "Bayern Munich",
      "country": "England"
    },
    {
      "name": "L. Modric",
      "club": "Real Madrid",
      "country": "Croatia"
    },
    {
      "name": "Rodri",
      "club": "Manchester City",
      "country": "Spain"
    },
    {
      "name": "B. Saka",
      "club": "Arsenal",
      "country": "England"
    },
    {
      "name": "Victor Osimhen",
      "club": "Napoli",
      "country": "Nigeria"
    },
    {
      "name": "P. Dybala",
      "club": "AS Roma",
      "country": "Argentina"
    },
    {
      "name": "J. Grealish",
      "club": "Manchester City",
      "country": "England"
    },
    {
      "name": "R. Lewandowski",
      "club": "Barcelona",
      "country": "Poland"
    },
    {
      "name": "M. Odegaard",
      "club": "Arsenal",
      "country": "Norway"
    },
    {
      "name": "C. Ronaldo",
      "club": "Al-Nasr",
      "country": "Portugal"
    },
    {
      "name": "L. Messi",
      "club": "Inter Miami",
      "country": "Argentina"
    },
    {
      "name": "E. Haaland",
      "club": "Manchester City",
      "country": "Norway"
    },
    {
      "name": "K. Mbappe",
      "club": "Paris Saint-Germain",
      "country": "France"
    },
    {
      "name": "Mohamed Salah",
      "club": "Liverpool",
      "country": "Egypt"
    },
    {
      "name": "Vinicius Jr",
      "club": "Real Madrid",
      "country": "Brazil"
    },
    {
      "name": "J. Bellingham",
      "club": "Real Madrid",
      "country": "England"
    },
    {
      "name": "Bruno Fernandes",
      "club": "Manchester United",
      "country": "Portugal"
    },
    {
      "name": "K. De Bruyne",
      "club": "Manchester City",
      "country": "Belgium"
    },
    {
      "name": "V. van Dijk",
      "club": "Liverpool",
      "country": "Netherlands"
    },
    {
      "name": "T. Kroos",
      "club": "Real Madrid",
      "country": "Germany"
    },
    {
      "name": "H. Kane",
      "club": "Bayern Munich",
      "country": "England"
    },
    {
      "name": "L. Modric",
      "club": "Real Madrid",
      "country": "Croatia"
    },
    {
      "name": "Rodri",
      "club": "Manchester City",
      "country": "Spain"
    },
    {
      "name": "B. Saka",
      "club": "Arsenal",
      "country": "England"
    },
    {
      "name": "Victor Osimhen",
      "club": "Napoli",
      "country": "Nigeria"
    },
    {
      "name": "P. Dybala",
      "club": "AS Roma",
      "country": "Argentina"
    },
    {
      "name": "J. Grealish",
      "club": "Manchester City",
      "country": "England"
    },
    {
      "name": "R. Lewandowski",
      "club": "Barcelona",
      "country": "Poland"
    },
    {
      "name": "M. Odegaard",
      "club": "Arsenal",
      "country": "Norway"
    },
    {
      "name": "C. Ronaldo",
      "club": "Al-Nasr",
      "country": "Portugal"
    },
    {
      "name": "L. Messi",
      "club": "Inter Miami",
      "country": "Argentina"
    },
    {
      "name": "E. Haaland",
      "club": "Manchester City",
      "country": "Norway"
    },
    {
      "name": "K. Mbappe",
      "club": "Paris Saint-Germain",
      "country": "France"
    },
    {
      "name": "Mohamed Salah",
      "club": "Liverpool",
      "country": "Egypt"
    },
    {
      "name": "Vinicius Jr",
      "club": "Real Madrid",
      "country": "Brazil"
    },
    {
      "name": "J. Bellingham",
      "club": "Real Madrid",
      "country": "England"
    },
    {
      "name": "Bruno Fernandes",
      "club": "Manchester United",
      "country": "Portugal"
    },
    {
      "name": "K. De Bruyne",
      "club": "Manchester City",
      "country": "Belgium"
    },
    {
      "name": "V. van Dijk",
      "club": "Liverpool",
      "country": "Netherlands"
    },
    {
      "name": "T. Kroos",
      "club": "Real Madrid",
      "country": "Germany"
    },
    {
      "name": "H. Kane",
      "club": "Bayern Munich",
      "country": "England"
    },
    {
      "name": "L. Modric",
      "club": "Real Madrid",
      "country": "Croatia"
    },
    {
      "name": "Rodri",
      "club": "Manchester City",
      "country": "Spain"
    },
    {
      "name": "B. Saka",
      "club": "Arsenal",
      "country": "England"
    },
    {
      "name": "Victor Osimhen",
      "club": "Napoli",
      "country": "Nigeria"
    },
    {
      "name": "P. Dybala",
      "club": "AS Roma",
      "country": "Argentina"
    },
    {
      "name": "J. Grealish",
      "club": "Manchester City",
      "country": "England"
    },
    {
      "name": "R. Lewandowski",
      "club": "Barcelona",
      "country": "Poland"
    },
    {
      "name": "M. Odegaard",
      "club": "Arsenal",
      "country": "Norway"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                footballPlayers[index]['name']![0],
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            title: Text("${index+1}. ${footballPlayers[index]['name']!}"),
            subtitle: Text("${footballPlayers[index]['country']!} - ${footballPlayers[index]['club']!}"),
          );
        }
      ),
    );
  }
}