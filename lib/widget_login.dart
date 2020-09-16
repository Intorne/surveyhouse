import 'package:flutter/material.dart';

class WidgetLogin extends StatefulWidget {
  @override
  _WidgetLoginState createState() => _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {

  TextStyle style = TextStyle( //style padrão
    fontFamily: 'Montserrat',
    fontSize: 20.0,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Usuário",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0))),
    );

    final buttonLogin = ButtonTheme(
        minWidth: MediaQuery //deixa o botão do tamanho da caixa de texto
            .of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: RaisedButton(
            color: Colors.black,
            child: Text("Entrar", textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    )),
            onPressed: () => exibirTexto('pressionado'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            )
        )
    );

    /*final bottomNavigationBar = BottomAppBar(
        child: Container(
          height: 20.0,
           decoration: BoxDecoration(
               boxShadow: [
                 BoxShadow(
                     color: Colors.black54,
                     blurRadius: 0,
                     offset: Offset(0.0, 0.0)
                 )
               ]
           ),
          child: Row(
            children: [
              Text("Esqueci minha senha           ", textAlign: TextAlign.left),
              Text("Cadastrar                     ", textAlign: TextAlign.right)
            ]
          ),
        ),
        color: Colors.orange,
    );*/

    return Scaffold(body: Center(
        child: SingleChildScrollView(
          child: Container(
              color: Colors.orange,
              padding: const EdgeInsets.fromLTRB(40, 160, 40, 200),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 150.0,
                    child: Image.asset(
                        "imagens/logoPB.png", fit: BoxFit.contain),
                  ),
                  SizedBox(height: 40.0), emailField,
                  SizedBox(height: 20.0), passwordField,
                  SizedBox(height: 30.0), buttonLogin,
                  //SizedBox(height: 135.0), bottomNavigationBar,
                ],
              )
          ),
        )
    )
    );
  }

  void exibirTexto(String s) {
    print("Pressionado");
  }
}