import 'package:flutter/material.dart';
import 'package:myapp/veiculo.dart';

class VeiculoListagemScreen extends StatefulWidget {
  const VeiculoListagemScreen({super.key});

  @override
  State<VeiculoListagemScreen> createState() => _VeiculoListagemScreenState();
}

class _VeiculoListagemScreenState extends State<VeiculoListagemScreen> {
List<Veiculo> veiculos = [
  Veiculo(marca: "Toyota", modelo: "Corolla", ano: 2022),
  Veiculo(marca: "Honda", modelo: "Civic", ano: 2022),
  Veiculo(marca: "Subaru", modelo: "Impreza", ano: 2022),
  Veiculo(marca: "Ford", modelo: "Focus", ano: 2022),
  Veiculo(marca: "Chevrolet", modelo: "Camaro", ano: 2022),
  Veiculo(marca: "Nissan", modelo: "Sentra", ano: 2022),
  Veiculo(marca: "Hyundai", modelo: "Elantra", ano: 2022),
  Veiculo(marca: "Kia", modelo: "Sportage", ano: 2022),
  Veiculo(marca: "Mazda", modelo: "CX-5", ano: 2022),
  Veiculo(marca: "Tesla", modelo: "Model S", ano: 2022),
  Veiculo(marca: "BMW", modelo: "X5", ano: 2022),
  Veiculo(marca: "Mercedes-Benz", modelo: "C-Class", ano: 2022),
  Veiculo(marca: "Audi", modelo: "A4", ano: 2022),
  Veiculo(marca: "Volkswagen", modelo: "Golf", ano: 2022)
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listagem de veículos", style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
          SizedBox(height: 10,),
          FloatingActionButton(onPressed: (){}, child: Icon(Icons.abc_outlined),),
          FloatingActionButton(onPressed: (){}, child: Icon(Icons.access_alarm),)
        ],
      ),
      body: Column(
        children: veiculos.map(veiculo => construirItemVeiculo(veiculo)).toList(),
      ),
    );
  }

  Widget construirItemVeiculo(Veiculo veiculo){
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        children: [
          Text("Modelo: "),
          Text(veiculo.modelo!)
        ],
      ),
    );
  }
}