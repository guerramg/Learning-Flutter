import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({super.key});

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String texto = '';
  int dropdown = 0;

  final formKey = GlobalKey<FormState>();
  final dataEC = TextEditingController(); //CONTROLADOR DO TEXTFIELD

  @override
  void dispose() {
    //METODO PARA LIMPAR OS DADOS DA MEMORIA, AQUI LIMPA O CONTROLADOR DO TEXTFIELD
    dataEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forms')),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                // TextField( //USADO PARA INFORMAÇÕES SIMPLES DE TEXTO ONDE PRECISA RECUPERAR O QUE FOI DIGITADO
                //   onChanged: (String value){
                //     setState(() {
                //       texto = value;
                //     });
                //   },

                // ),
                // SizedBox(height: 20,),
                // Text('Texto sendo digitado: $texto'),
                TextFormField(
                  //VALIDAÇÃO DE FORMULARIO
                  // autovalidateMode: AutovalidateMode.always, //VALIDA AO ACESSAR A PAGINA
                  controller: dataEC,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // borderSide: BorderSide(color: Colors.red, width: 2),
                    ), //BORDA ARREDONDADA
                    labelText: 'Digite o Nome',
                  ),

                  maxLength: 20, //QUANTIDADE MAXIMA DE CARACTERES
                  maxLines: null, //QUANTIDADE DE LINHAS QUE O TEXTO PODE TER
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo Obrigatorio';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  // controller: dataEC,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                    ), 
                    labelText: 'Digite sua Senha',
                  ),
                  obscureText: true,

                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo Obrigatorio';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                  
                  icon: Icon(Icons.arrow_downward),
                  initialValue: 1,
                  validator: (value) {
                    if (value == null) {
                      return 'Selecione um item';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Item',
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  items: [
                  DropdownMenuItem(value: 1,child: Text('Item 1'),
                  ),
                  DropdownMenuItem(value: 2,child: Text('Item 2'),
                  ),
                  DropdownMenuItem(value: 3,child: Text('Item 3'),
                  ),
              ],
               onChanged: (value) { 
                  if(value != null){
                    setState(() {
                      dropdown = value;
                    });
                    // print (dropdown);
                  }
                },
              ),
                  SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    if (formValid) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Formulario Valido Texto: ${dataEC.text}',
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Formulario Invalido')),
                      );
                    }
                  },
                  child: Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
