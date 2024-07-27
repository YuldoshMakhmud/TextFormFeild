import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network("https://africa.visa.com/dam/VCOM/regional/cemea/genericafrica/global-elements/cards/signature-800x450.jpg"),
        const SizedBox(height: 20,),
        _inputName(),
        const SizedBox(height: 10,),
        _inputCard(),
        SizedBox(height: 10,),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: _inputDate(),
            ),
            Container(
              width: MediaQuery.of(context).size.width *0.5,
              child: _inputCode(),
            ),
      
          ],
        ),
      const  SizedBox(height: 15,),
        ElevatedButton(onPressed: (){},child: const Text('SUBMIT',style: TextStyle(color: Colors.black),)),
        ],
      ),
    );
  }

  Container _inputName() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(
          icon: Icon(Icons.person),
          hintText: "Full Name",
        border: InputBorder.none
        ),
      ),
    );
  } 
  Container _inputCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        style: const TextStyle(fontSize: 20),
        keyboardType: TextInputType.number,
        inputFormatters: [
          new LengthLimitingTextInputFormatter(16)
        ],
        decoration: const InputDecoration(
          icon: Icon(Icons.credit_card),
          hintText: "0000-0000-0000-0000",
        border: InputBorder.none
        ),
      ),
    );
  }
  Container _inputDate() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
         keyboardType: TextInputType.number,
           inputFormatters: [
       new  LengthLimitingTextInputFormatter(3)
        ],
        style: const TextStyle(fontSize: 20),
         decoration: const InputDecoration(
        icon: Icon(Icons.pin),
          hintText: "CVC",
        border: InputBorder.none
        ),
      ),
    );
  }
  Container _inputCode() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        style: const TextStyle(fontSize: 20),
        keyboardType: TextInputType.number,
        inputFormatters: [
         LengthLimitingTextInputFormatter(4)
        ],
        
       decoration: const InputDecoration(
        icon: Icon(Icons.password_outlined),
          hintText: "Pin Code",
        border: InputBorder.none
        ),
      ),
    );
  }
}
