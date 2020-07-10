import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/specific_rect_clip.dart';
import 'package:adobe_xd/page_link.dart';
import './Login.dart';

class Registro extends StatelessWidget {
  Registro({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(135.0, 39.0),
            child: Text(
              'Registrar',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 37,
                color: const Color(0xffe47c6e),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(20.5, 112.0),
            child:
                // Adobe XD layer: 'Login Field' (none)
                SpecificRectClip(
              rect: Rect.fromLTWH(0, 0, 373, 506),
              child: UnconstrainedBox(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 373,
                  height: 492,
                  child: GridView.count(
                    primary: false,
                    padding: EdgeInsets.all(0),
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    crossAxisCount: 1,
                    childAspectRatio: 8.4773,
                    children: [
                      {
                        'text': 'Nombre:',
                      },
                      {
                        'text': 'Apellidos:',
                      },
                      {
                        'text': 'Teléfono:',
                      },
                      {
                        'text': 'Dirección:',
                      },
                      {
                        'text': 'Localidad:',
                      },
                      {
                        'text': 'Correo:',
                      },
                      {
                        'text': 'Contraseña:',
                      },
                      {
                        'text': 'Verificar Contraseña:',
                      },
                    ].map((map) {
                      final text = map['text'];
                      return Transform.translate(
                        offset: Offset(-20.5, -235.0),
                        child:
                            // Adobe XD layer: 'Login Field' (group)
                            Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(31.0, 235.0),
                              child: Text(
                                text,
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 20,
                                  color: const Color(0xbf707070),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(20.5, 278.5),
                              child: SvgPicture.string(
                                _svg_m0fnet,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 203.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Login(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(20.0, 448.0),
                    child: Container(
                      width: 374.0,
                      height: 66.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xffe47c6e),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(180.0, 467.0),
                    child: Text(
                      'Registrar',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 21,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 736.0),
            child: SvgPicture.string(
              _svg_hn4edt,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_m0fnet =
    '<svg viewBox="20.5 278.5 373.0 1.0" ><path transform="translate(20.5, 278.5)" d="M 0 0 L 373 0" fill="none" stroke="#e47c6e" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hn4edt =
    '<svg viewBox="0.0 736.0 414.0 1.0" ><path transform="translate(0.0, 554.45)" d="M 414 181.5451507568359 L 0 181.5451507568359 L 414 181.5451507568359 Z" fill="#b823ae" fill-opacity="0.33" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
