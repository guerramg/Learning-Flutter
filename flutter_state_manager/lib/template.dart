import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_manager/widgets/imc_gauge_range.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcSetstatePage extends StatefulWidget {
  const ImcSetstatePage({Key? key}) : super(key: key);

  @override
  State<ImcSetstatePage> createState() => _ImcSetstatePageState();
}

class _ImcSetstatePageState extends State<ImcSetstatePage> {

  final pesoEC = TextEditingController();
  final alturaEC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    pesoEC.dispose();
    alturaEC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculo IMC'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SfRadialGauge(
                axes: [
                  RadialAxis(
                    showLabels: false,
                    showAxisLine: false,
                    showTicks: false,
                    minimum: 12.5,
                    maximum: 47.9,
                    ranges: [
                      ImcGaugeRange(
                          color: Colors.blue,
                          start: 12.5,
                          end: 18.5,
                          label: 'Magreza'),
                      ImcGaugeRange(
                          color: Colors.green,
                          start: 18.5,
                          end: 24.5,
                          label: 'Normal'),
                      ImcGaugeRange(
                          color: Colors.orange,
                          start: 24.5,
                          end: 29.9,
                          label: 'Sobrepeso'),
                      ImcGaugeRange(
                          color: Colors.red[500]!,
                          start: 29.9,
                          end: 39.9,
                          label: 'Obesidade'),
                      ImcGaugeRange(
                          color: Colors.red[900]!,
                          start: 39.9,
                          end: 47.9,
                          label: 'Obesidade Grave')
                    ],
                    pointers: [
                      NeedlePointer(
                        value: 15,
                        enableAnimation: true,
                        // animationDuration: 1000,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: pesoEC,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Peso (kg)',
                ),
                inputFormatters: [
                  CurrencyTextInputFormatter.currency(
                    locale: 'pt_br',
                    symbol: '',
                    decimalDigits: 2,
                    turnOffGrouping: true,
                  )
                ],
              ),
              TextFormField(
                controller: alturaEC,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Altura (M)',
                ),
                inputFormatters: [
                  CurrencyTextInputFormatter.currency(
                    locale: 'pt_br',
                    symbol: '',
                    decimalDigits: 2,
                    turnOffGrouping: true,
                  )
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Calcular'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
