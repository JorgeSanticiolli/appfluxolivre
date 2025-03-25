import 'package:app_fluxolivre/src/widget/input_login_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget{
  const RegisterPage({super.key});


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center, 
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'),
            fit: BoxFit.cover,
            )
          ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                  width: 200,
                  child: Image(image: AssetImage('assets/images/et.png')),
          ),
          const SizedBox(height: 30,),
          InputLoginWidget(
            icon: Icons.person_outline, 
            hint: 'E-mail', 
            obscure: false),
          InputLoginWidget(
            icon: Icons.ballot, 
            hint: 'Nome de Usuario', 
            obscure: false
          ),
          InputLoginWidget(
            icon: Icons.fingerprint_outlined, 
            hint: 'CPF', 
            obscure: false
          ),
          InputLoginWidget(
            icon: Icons.lock_outlined, 
            hint: 'Senha', 
            obscure: true
          ),
          InputLoginWidget(
            icon: Icons.lock_outlined, 
            hint: 'Confirmar Senha', 
            obscure: true
          ),const SizedBox(height: 30,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFAFAE24),
              minimumSize: Size(double.infinity,60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14)
              )
            ),
            onPressed: (){
              Navigator.of(context).pushNamed('/home');
            }, 
            child: const Text('Cadastrar', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff031c5f)),)
            ),
          const SizedBox(height: 30,),            
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFAFAE24),
              minimumSize: Size(double.infinity,60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14)
              )
            ),
            onPressed: (){
              Navigator.of(context).pushNamed('/');
            }, 
            child: const Text('Cancelar', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff031c5f)),))
                ],
                ),
        ),
      ),
    );
  }}
