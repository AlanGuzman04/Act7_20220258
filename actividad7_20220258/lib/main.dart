// ignore_for_file: sort_child_properties_last

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  final PageController _controlapagina = PageController(initialPage: 0);

  int _indiceactuali = 0;

  int cosavalor = 0;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
            children: <Widget>[
              Text("Today",
              
              style: TextStyle(
                fontSize: 30.0, 
                fontWeight: FontWeight.bold, 
              ),
              
              ),
              SizedBox(width: 15.0,),
              Text("February",
              
              style: TextStyle(
                color: Color.fromARGB(255, 58, 57, 57) 
              ),
              
              ),
              SizedBox(width: 250.0,),
              Icon(CupertinoIcons.circle),
            ],
        ),
      ),
      body: PageView(
        controller: _controlapagina,
        children: const [
          
          Primerapagofi(),
          PaginaGames(),
          PaginaApps(),
          PaginaArcade(),
          PaginaSearch(),

          
        ],

        onPageChanged: (index) {
          setState(() {
            _indiceactuali = index;
          });
        },


      ),




      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Apps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'Arcade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],

        selectedItemColor: _colorpaelitem(),

        currentIndex: _indiceactuali,

        onTap: (index) {
          _controlapagina.animateToPage(index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        },
      ),


    );


  }






  Color _colorpaelitem() {
    switch (_indiceactuali) {
      case 0:
        return Colors.amber[800]!;
      case 1:
        return Colors.amber[800]!;
      case 2:
        return Colors.amber[800]!;
      default:
        return Colors.amber[800]!;
    }
  }
}

class PaginaGames extends StatelessWidget {
  const PaginaGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Center(
      child: Text('Soy el recienteeee'),
    );

  }
}


class PaginaApps extends StatelessWidget {
  const PaginaApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Center(
      child: Text('Soy el rapps'),
    );

  }
}


class PaginaArcade extends StatelessWidget {
  const PaginaArcade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Center(
      child: Text('Soy el arcade'),
    );

  }
}


class PaginaSearch extends StatelessWidget {
  const PaginaSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Cosabus(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7, 
          child: ListView(
            children: const <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Text(
                    "Discover",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15.0,),


              Row(
                children: <Widget>[

                  Ultimauya(),
                  Ultimauyaotra(),

                ],
              ),

              SizedBox(height: 15.0,),

              Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Text(
                    "Suggested",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Misappscreo(),

              
              
              
            ],
          ),
        ),
      ],
    );

  }
}



class Misappscreo extends StatelessWidget {
  const Misappscreo({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return const Column(
      children: <Widget>[
        SizedBox(
          
          child: CupertinoListTile(
            leading: Icon(CupertinoIcons.cube_fill),
            title: Text("Booking"),
            subtitle: Text("AD"),
            trailing: CupertinoButton.filled(
              onPressed: null,
              child: Text('Open'),
            ),
            
          ),
        ),
        SizedBox(
          
          child: CupertinoListTile(
            leading: Icon(CupertinoIcons.cube_fill),
            title: Text("call of duty mobile"),
            subtitle: Text("modo multijugador de escuadras y battle royale"),
            trailing: CupertinoButton.filled(
              onPressed: null,
              child: Text('Open'),
            ),
            
          ),
        ),
        SizedBox(
          
          child: CupertinoListTile(
            leading: Icon(CupertinoIcons.cube_fill),
            title: Text("free fire"),
            subtitle: Text("modo battle royale"),
            trailing: CupertinoButton.filled(
              onPressed: null,
              child: Text('Get'),
            ),
          ),
        ),
        SizedBox(
          
          child: CupertinoListTile(
            leading: Icon(CupertinoIcons.cube_fill),
            title: Text("Pokemon go"),
            subtitle: Text("epico AR de aventuraa"),
            trailing: CupertinoButton.filled(
              onPressed: null,
              child: Text('Get'),
            ),
          ),
        ),
        SizedBox(
          
          child: CupertinoListTile(
            leading: Icon(CupertinoIcons.cube_fill),
            title: Text("Roblox"),
            subtitle: Text("EL mejor juego sandbox"),
            trailing: CupertinoButton.filled(
              onPressed: null,
              child: Text('Get'),
            ),
            
          ),
        ),
        SizedBox(
          
          child: CupertinoListTile(
            leading: Icon(CupertinoIcons.cube_fill),
            title: Text("Stumble guys"),
            subtitle: Text("divertido multiplayer"),
            trailing: CupertinoButton.filled(
              onPressed: null,
              child: Text('Get'),
            ),
            
          ),
        ),
        SizedBox(
           
          child: CupertinoListTile(
            leading: Icon(CupertinoIcons.cube_fill),
            title: Text("LOL"),
            subtitle: Text("competitivo 5 vs 5"),
            trailing: CupertinoButton.filled(
              onPressed: null,
              child: Text('Get'),
            ),
            
          ),
        ),
        SizedBox(
          
          child: CupertinoListTile(
            leading: Icon(CupertinoIcons.cube_fill),
            title: Text("Arena Breakout"),
            subtitle: Text("mejor shooter de supervivencia"),
            trailing: CupertinoButton.filled(
              onPressed: null,
              child: Text('Get'),
            ),
            
          ),
        ),


        SizedBox(
          
          child: CupertinoListTile(
            leading: Icon(CupertinoIcons.cube_fill),
            title: Text("Candy crush"),
            subtitle: Text("mejor juego pa viejos"),
            trailing: CupertinoButton.filled(
              onPressed: null,
              child: Text('Get'),
            ),
            
          ),
        ),

        SizedBox(
          
          child: CupertinoListTile(
            leading: Icon(CupertinoIcons.cube_fill),
            title: Text("PvZ"),
            subtitle: Text("Plantas contra zombies"),
            trailing: CupertinoButton.filled(
              onPressed: null,
              child: Text('Get'),
            ),
            
          ),
        ),


        SizedBox(
          
          child: CupertinoListTile(
            leading: Icon(CupertinoIcons.cube_fill),
            title: Text("Pixel gun 3D"),
            subtitle: Text("mejor shooter de cubos"),
            trailing: CupertinoButton.filled(
              onPressed: null,
              child: Text('Get'),
            ),
            
          ),
        ),

      ],
    );
  }
}

















class Ultimauya extends StatelessWidget {
  const Ultimauya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5, 
          child: const CupertinoListTile(
            leading: Icon(CupertinoIcons.search),
            title: Text("Chrome cast"),
            
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5, 
          child: const CupertinoListTile(
            leading: Icon(CupertinoIcons.search),
            title: Text("pdf converter"),
            
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5, 
          child: const CupertinoListTile(
            leading: Icon(CupertinoIcons.search),
            title: Text("matematicas"),
            
          ),
        ),
      ],
    );
  }
}



class Ultimauyaotra extends StatelessWidget {
  const Ultimauyaotra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5, 
          child: const CupertinoListTile(
            leading: Icon(CupertinoIcons.search),
            title: Text("fire tv"),
            
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5, 
          child: const CupertinoListTile(
            leading: Icon(CupertinoIcons.search),
            title: Text("mytitle pony"),
            
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5, 
          child: const CupertinoListTile(
            leading: Icon(CupertinoIcons.search),
            title: Text("juegos de terror"),
            
          ),
        ),
      ],
    );
  }
}




class Cosabus extends StatelessWidget {
  const Cosabus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Buscar...',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}





class Primerapagofi extends StatelessWidget {
  const Primerapagofi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(

      children: <Widget>[

        Padding(
          padding: EdgeInsets.all(8.0), 
          child: Column(
            children: <Widget>[
              Primerapag(),
              SizedBox(height: 30.0),
              Seguncard(),
           ] 
          ),
        ),
      ],

    );
  }
}


class Primerapag extends StatelessWidget {
  const Primerapag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        elevation: 0, 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: Column(
            children: [
              Image.network(
                'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2024/01/one-piece-arco-egghead-3260423.jpg',
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              const CupertinoListTile(
                leading: Icon(CupertinoIcons.book),
                title: Text('One piece'),
                trailing: CupertinoButton.filled(
                  onPressed: null,
                  child: Text('Get'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class Seguncard extends StatelessWidget {
  const Seguncard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        elevation: 0, 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: Column(
            children: [
              Image.network(
                'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2024/01/one-piece-arco-egghead-3260423.jpg',
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
              ),
              const CupertinoListTile(
                
                title: Text('One piece Sheein'),
                subtitle: Text("barato con envio incluido"),
                trailing: Icon(CupertinoIcons.download_circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}