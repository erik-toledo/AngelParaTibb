import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp_all/pages/progress_view.dart';
import 'package:mvp_all/styles/colors/colors_login_view.dart';
import 'package:mvp_all/styles/colors/colors_register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
                    width: 160,
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
                ),
                Row(children: [
                  Container(
                    width: 160,
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
                  margin: const EdgeInsets.only(left: 29, top: 43, bottom: 10),
                  child: const Text(
                    'Inicia sesión con tu cuenta para continuar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
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
        Container(
          width: 360,
          height: 70,
          margin: const EdgeInsets.only(bottom: 15),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Email addres',
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
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 29, bottom: 5),
          child: const Text(
            'Contraseña',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 360,
          height: 70,
          child: TextFormField(
            obscureText: visible,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              labelText: 'Password',
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
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    visible = !visible;
                  });
                },
                icon: Icon(visible ? Icons.visibility_off : Icons.visibility),
              ),
            ),
            style: const TextStyle(
              fontSize: 16,
              color: ColorsRegisterView.txFName,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(right: 30,bottom: 200),
          child:  InkWell(
            child: const Text(
              '¿Has olvidado la contraseña?',
              style: TextStyle(
                color: ColorsLogin.textPassword,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            onTap: (){
              showCupertinoModalPopup(context: context, builder: (context)=> const ProgressView("IniciarSesionContraseña"));

            },
          ),
        ),
        Container(
          width: 360,
          height: 50,
          margin: const EdgeInsets.only(top: 50),
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
              'Ingresar',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          width: 360,
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '¿Todavía no tienes cuenta?',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              InkWell(
                child: const Text(
                  ' Registrate',
                  style: TextStyle(
                    fontSize: 17,
                    color: ColorsRegisterView.txtBtnTerminos,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  showCupertinoModalPopup(context: context, builder: (context)=> const ProgressView("IniciarSesionRegistro"));
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
