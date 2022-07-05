import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _textStyle = const TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Contador'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Clicks:', style: _textStyle),
              Text('$_conteo', style: _textStyle),
            ],
          ),
        ),
        floatingActionButton: _crearBotones()
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(),
        FloatingActionButton(
          onPressed: _restar,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(),
        FloatingActionButton(
          onPressed: _reset,
          child: const Icon(Icons.exposure_zero_sharp),
        ),
        const SizedBox(),
        FloatingActionButton(
          onPressed: _sumar,
          child: const Icon(Icons.add),
        )
      ],
    );
  }

  void _sumar() {
    setState(() => _conteo++);
  }

  void _restar() {
    setState(() => {if (_conteo > 0) _conteo--});
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
