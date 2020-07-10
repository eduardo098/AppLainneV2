import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import './Menu.dart';
import './Recuperar.dart';
import './Registro.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


//class Login extends StatelessWidget {
//  Login({
//    Key key,
//  }) : super(key: key);
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: const Color(0xffffffff),
//      body: Stack(
//        children: <Widget>[
//          // Adobe XD layer: 'LoginBackground' (shape)
//          Container(
//            width: 414.0,
//            height: 736.0,
//            decoration: BoxDecoration(
//              image: DecorationImage(
//                image: const AssetImage('assets/images/LoginBackground.jpg'),
//                fit: BoxFit.cover,
//              ),
//            ),
//          ),
//          Transform.translate(
//            offset: Offset(47.0, 279.0),
//            child: Container(
//              width: 320.0,
//              height: 400.0,
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(20.0),
//                color: const Color(0xffffffff),
//                boxShadow: [
//                  BoxShadow(
//                    color: const Color(0x6b000000),
//                    offset: Offset(0, 3),
//                    blurRadius: 6,
//                  ),
//                ],
//              ),
//            ),
//          ),
//          Transform.translate(
//            offset: Offset(0.0, -37.0),
//            child:
//                // Adobe XD layer: 'Email Field' (group)
//                Stack(
//              children: <Widget>[
//                Transform.translate(
//                  offset: Offset(77.0, 368.0),
//                  child: Container(
//                    width: 260.0,
//                    height: 50.0,
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(25.0),
//                      color: const Color(0xffffffff),
//                      border: Border.all(
//                          width: 1.0, color: const Color(0xba707070)),
//                    ),
//                  ),
//                ),
//                Transform.translate(
//                  offset: Offset(92.0, 383.0),
//                  child: Text(
//                    'Correo:',
//                    style: TextStyle(
//                      fontFamily: 'Segoe UI',
//                      fontSize: 16,
//                      color: const Color(0xba707070),
//                    ),
//                    textAlign: TextAlign.left,
//                  ),
//                ),
//              ],
//            ),
//          ),
//          Transform.translate(
//            offset: Offset(0.0, 53.0),
//            child:
//                // Adobe XD layer: 'Password Field' (group)
//                Stack(
//              children: <Widget>[
//                Transform.translate(
//                  offset: Offset(77.0, 368.0),
//                  child: Container(
//                    width: 260.0,
//                    height: 50.0,
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(25.0),
//                      color: const Color(0xffffffff),
//                      border: Border.all(
//                          width: 1.0, color: const Color(0xba707070)),
//                    ),
//                  ),
//                ),
//                Transform.translate(
//                  offset: Offset(92.0, 383.0),
//                  child: Text(
//                    'Contraseña:',
//                    style: TextStyle(
//                      fontFamily: 'Segoe UI',
//                      fontSize: 16,
//                      color: const Color(0xba707070),
//                    ),
//                    textAlign: TextAlign.left,
//                  ),
//                ),
//              ],
//            ),
//          ),
//          PageLink(
//            links: [
//              PageLinkInfo(
//                transition: LinkTransition.Fade,
//                ease: Curves.easeOut,
//                duration: 0.3,
//                pageBuilder: () => Menu(),
//              ),
//            ],
//            child:
//                // Adobe XD layer: 'Button' (group)
//                Stack(
//              children: <Widget>[
//                Transform.translate(
//                  offset: Offset(77.0, 511.0),
//                  child: Container(
//                    width: 260.0,
//                    height: 50.0,
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(25.0),
//                      color: const Color(0xffe47c6e),
//                    ),
//                  ),
//                ),
//                Transform.translate(
//                  offset: Offset(181.0, 523.0),
//                  child: Text(
//                    'Entrar',
//                    style: TextStyle(
//                      fontFamily: 'Segoe UI',
//                      fontSize: 20,
//                      color: const Color(0xffffffff),
//                    ),
//                    textAlign: TextAlign.left,
//                  ),
//                ),
//              ],
//            ),
//          ),
//          Transform.translate(
//            offset: Offset(77.0, 606.0),
//            child: PageLink(
//              links: [
//                PageLinkInfo(
//                  transition: LinkTransition.Fade,
//                  ease: Curves.easeOut,
//                  duration: 0.3,
//                  pageBuilder: () => Recuperar(),
//                ),
//              ],
//              child: Text(
//                'Olvide mi contraseña',
//                style: TextStyle(
//                  fontFamily: 'Segoe UI',
//                  fontSize: 12,
//                  color: const Color(0xba707070),
//                ),
//                textAlign: TextAlign.left,
//              ),
//            ),
//          ),
//          Transform.translate(
//            offset: Offset(264.0, 601.0),
//            child: PageLink(
//              links: [
//                PageLinkInfo(
//                  transition: LinkTransition.Fade,
//                  ease: Curves.easeOut,
//                  duration: 0.3,
//                  pageBuilder: () => Registro(),
//                ),
//              ],
//              child: Text(
//                'Registrarse',
//                style: TextStyle(
//                  fontFamily: 'Segoe UI',
//                  fontSize: 15,
//                  color: const Color(0xffe47c6e),
//                ),
//                textAlign: TextAlign.left,
//              ),
//            ),
//          ),
//          Transform.translate(
//            offset: Offset(160.0, 32.0),
//            child:
//                // Adobe XD layer: 'piece-of-cake' (shape)
//                Container(
//              width: 130.0,
//              height: 130.0,
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                  image: const AssetImage('assets/images/Logo.png'),
//                  fit: BoxFit.cover,
//                ),
//              ),
//            ),
//          ),
//          Transform.translate(
//            offset: Offset(173.0, 197.0),
//            child: Text(
//              'LOGIN',
//              style: TextStyle(
//                fontFamily: 'Segoe UI',
//                fontSize: 24,
//                color: const Color(0xffffffff),
//              ),
//              textAlign: TextAlign.left,
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
          children: <Widget>[
          // Adobe XD layer: 'LoginBackground' (shape)
          Container(
            width: 414.0,
            height: 736.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/LoginBackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(47.0, 279.0),
            child: Container(
              width: 320.0,
              height: 400.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x6b000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
               child:
                   Column(
                     children: <Widget>[
                       TextField(
                         controller: emailController,
                         autocorrect: true,
                         decoration: InputDecoration(
                           hintText: 'Correo: ',
                           hintStyle: TextStyle(color: Colors.grey),
                           filled: true,
                           fillColor: Colors.white70,
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(50)),
                             borderSide: BorderSide(color: Colors.grey, width: 1),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(50.0)),
                             borderSide: BorderSide(color: Colors.pink),
                           ),
                         ),
                       ),
                       TextField(
                         controller: passwordController,
                         autocorrect: true,
                         obscureText: true,
                         decoration: InputDecoration(
                           hintText: 'Contraseña: ',
                           hintStyle: TextStyle(color: Colors.grey),
                           filled: true,
                           fillColor: Colors.white70,
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(50)),
                             borderSide: BorderSide(color: Colors.grey, width: 1),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(50.0)),
                             borderSide: BorderSide(color: Colors.pink),
                           ),
                         ),
                       ),
                     ],
                   )
            ),
          ),
          PageLink(
            links: [
              PageLinkInfo(
                transition: LinkTransition.Fade,
                ease: Curves.easeOut,
                duration: 0.3,
                pageBuilder: () => Menu(),
              ),
            ],
            child:
                // Adobe XD layer: 'Button' (group)
                Stack(
              children: <Widget>[
                Positioned(
                  top: 500.0,
                  right: 50.0,
                  left: 50.0,
                  child:Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 260.0,
                    height: 50.0,
                    child: RaisedButton(
                        onPressed: (){
                          signIn( emailController.text, passwordController.text);
                        },
                        color: const Color(0xffe47c6e),
                        child: Text("Login", style: TextStyle(color: Colors.white)),
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),
                  ),
                  )
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(77.0, 606.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Recuperar(),
                ),
              ],
              child: Text(
                'Olvide mi contraseña',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 12,
                  color: const Color(0xba707070),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(264.0, 601.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Registro(),
                ),
              ],
              child: Text(
                'Registrarse',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 15,
                  color: const Color(0xffe47c6e),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(160.0, 32.0),
            child:
                // Adobe XD layer: 'piece-of-cake' (shape)
                Container(
              width: 130.0,
              height: 130.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(173.0, 197.0),
         child:
            Text('Login',
              style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 15,
              color: Colors.white,
            ),
            )
          ),
          ],
        ),
    );
  }

//  Functions part
  signIn(String email, password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var response = await http.post("http://192.168.1.77/ws-p1/API_Login.php",
        body: jsonEncode(<String, String> {'email': email, 'password': password}));
    var jsonResponse = json.decode(response.body);
    print(jsonResponse['success']);
    if(jsonResponse['success'] == 1){
      sharedPreferences.setString("token", jsonResponse['token']);
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Menu()), (Route<dynamic> route) => false);
    }else{
      print(jsonResponse);
    }
  }
}