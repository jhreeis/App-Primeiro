import 'package:flutter/material.dart';

void main() {
  runApp(const MeuPrimeiroPrograma());
}

class MeuPrimeiroPrograma extends StatelessWidget {
  const MeuPrimeiroPrograma({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MinhaPagina(title: 'Primeiro Layout'),
    );
  }
}

class MinhaPagina extends StatefulWidget {
  const MinhaPagina({super.key, required this.title});
  final String title;

  @override
  State<MinhaPagina> createState() => _MinhaPaginaState();
}

class _MinhaPaginaState extends State<MinhaPagina> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.errorContainer,
        title: Text(widget.title),
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {

            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Você pressionou o botão esse número de vezes:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
