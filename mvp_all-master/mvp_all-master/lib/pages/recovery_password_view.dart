import 'package:flutter/material.dart';
import 'package:mvp_all/styles/colors/colors_recovery_password.dart';
import 'package:mvp_all/styles/colors/colors_register_view.dart';

class RecoveryPassword extends StatelessWidget {
  const RecoveryPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsRegisterView.backgroundAppBar,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: ColorsRegisterView.txtBtnTerminos,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: SizedBox(
            width: double.infinity,
            height: 60,
            child: Row(
              children: [
                Row(
                  children: const [
                  SizedBox(
                    width: 220,
                    child: Text(
                      'Recuperar contraseña',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
                ),
                Row(children: [
                  Container(
                    width: 100,
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/images_home/splash.png',
                      color: Colors.white,
                    ),
                  )
                ],)
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 50,
                  margin: const EdgeInsets.only(left: 29, top: 43, bottom: 20),
                  child: const Text(
                    'Ingresa tu email para restablecer tu contraseña',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: ColorsRegisterView.txtRegister,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const BodyContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BodyContent extends StatefulWidget {
  const BodyContent({Key? key}) : super(key: key);

  @override
  State<BodyContent> createState() => _BodyContentState();
}

class _BodyContentState extends State<BodyContent> {
  bool value = false;
  int val = -1;
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 29, bottom: 5),
          child: const Text(
            'Correo electrónico',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 360,
          height: 70,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Dirección de correo',
              labelStyle: const TextStyle(
                color: ColorsRegisterView.txFName,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: ColorsRegisterView.borderTf,
                  width: 1.5,
                ),
              ),
            ),
            style: const TextStyle(
              fontSize: 16,
              color: ColorsRegisterView.txFName,
            ),
          ),
        ),
        Container(
          width: 400,
          height: 100,
          margin: const EdgeInsets.only(left: 45, right: 30,bottom: 200),
          child: Column(
            children:  [
              Container(
                margin: const EdgeInsets.only(bottom: 1.5),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Ingrese su correo electrónico registrado y le',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ColorsRecoveryPass.textSpamEmail,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 1.5),
                child: const Text(
                  'le enviaremos un correo electrónico  que contiene un',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ColorsRecoveryPass.textSpamEmail,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                 margin: const EdgeInsets.only(bottom: 1.5),
                child: const Text(
                  'enlace para restablecer su contraseña',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ColorsRecoveryPass.textSpamEmail,
                  ),
                ),
              )
            ],
          ) ,
        ),
        Container(
          width: 360,
          height: 50,
          margin: const EdgeInsets.only(top: 90),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: ColorsRegisterView.btnNewAccount,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            child: const Text(
              'Enviar Solicitud',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
