import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp_all/pages/home_view.dart';
import 'package:mvp_all/pages/progress_view.dart';
import 'package:mvp_all/styles/colors/colors_register_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

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
                      'Regístrate',
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
                  margin: const EdgeInsets.only(left: 29,top: 43, bottom: 10),
                  child: const Text(
                    'Crea una cuenta para empezar a usar la app',
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
            'Nombre',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 360,
          height: 70,
          margin: const EdgeInsets.only(bottom: 15),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Nombre',
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
            'Dirección de correo',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 360,
          height: 70,
          margin: const EdgeInsets.only(bottom: 15),
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
          child: TextField(
            obscureText: visible,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              labelText: 'Contraseña',
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
          width: 340,
          height: 50,
          margin: const EdgeInsets.only(left: 17),
          child: const Text(
            'La contraseña debe contener caracteres, números y símbolos con un mínimo de 6 caracteres.',
            style: TextStyle(
              color: ColorsRegisterView.txFName,
            ),
          ),
        ),
        Container(
          width: 350,
          height: 50,
          margin: const EdgeInsets.only(left: 26, right: 75),
          child: Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 50,
                    margin: const EdgeInsets.only(right: 10, bottom: 14),
                    child: Checkbox(
                        value: value,
                        side: const BorderSide(
                          color: ColorsRegisterView.borderRadiusCheck,
                          width: 1.5,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onChanged: (bool? valueNew) {
                          setState(() {
                            value = valueNew!;
                          });
                        }),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 270,
                    height: 50,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Al registrarme, acepto los',
                                  style: TextStyle(fontSize: 15),
                                ),
                                InkWell(
                                  onTap: () {
                                    Route route = MaterialPageRoute(
                                        builder: (context) => const HomeApp());
                                    Navigator.push(context, route);
                                  },
                                  child: const Text(
                                    ' términos y',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: ColorsRegisterView.txtBtnTerminos,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                InkWell(
                                  child: Text(
                                    'condiciones',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: ColorsRegisterView.txtBtnTerminos,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  child: Text(
                                    ' y la',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                InkWell(
                                  child: Text(
                                    ' política de privacidad',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: ColorsRegisterView.txtBtnTerminos,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
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
              'Crear Cuenta',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          width: 360,
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text(
                '¿Ya tienes cuenta?',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              InkWell(
                child:const Text(
                  ' Iniciar sesión',
                  style: TextStyle(
                    fontSize: 17,
                    color: ColorsRegisterView.txtBtnTerminos,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  showCupertinoModalPopup(context: context, builder: (context)=> const ProgressView("RegistroInicioSesion"));

                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
