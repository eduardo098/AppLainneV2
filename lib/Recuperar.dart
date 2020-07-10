import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/page_link.dart';
import './Login.dart';

class Recuperar extends StatelessWidget {
  Recuperar({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(62.0, 50.0),
            child: Text(
              'Recuperar Contraseña',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 30,
                color: const Color(0xffe47c6e),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, -15.0),
            child:
                // Adobe XD layer: 'Login Field' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(31.0, 235.0),
                  child: Text(
                    'Correo:',
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
          ),
          Transform.translate(
            offset: Offset(20.0, 448.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Login(),
                ),
              ],
              child: Container(
                width: 374.0,
                height: 66.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color(0xffe47c6e),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(161.0, 467.0),
            child: Text(
              'Recuperar',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 21,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 529.79),
            child: SvgPicture.string(
              _svg_fp2rtn,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(166.0, 659.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Login(),
                ),
              ],
              child: SizedBox(
                width: 96.0,
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 21,
                      color: const Color(0xa8ffffff),
                    ),
                    children: [
                      TextSpan(
                        text: 'Regresar',
                        style: TextStyle(
                          color: const Color(0xf5ffffff),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_m0fnet =
    '<svg viewBox="20.5 278.5 373.0 1.0" ><path transform="translate(20.5, 278.5)" d="M 0 0 L 373 0" fill="none" stroke="#e47c6e" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fp2rtn =
    '<svg viewBox="0.0 529.8 414.0 206.2" ><path transform="translate(0.0, 529.79)" d="M 0 0 C 0 0 83.58815765380859 5.440797805786133 119.2032241821289 25.57623291015625 C 156.2508239746094 46.52166366577148 257.1187744140625 86.77630615234375 310.1110534667969 86.77630615234375 C 413.6109924316406 86.77630615234375 413.7785949707031 81.69146728515625 413.7785949707031 81.69146728515625 L 414 206.2078704833984 L 0 206.2078704833984 L 0 0 Z" fill="#e47c6e" fill-opacity="0.66" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.0, 554.45)" d="M 0 0 C 0 0 83.58815765380859 4.790071487426758 119.2032241821289 22.51728439331055 C 156.2508239746094 40.95761489868164 256.2053527832031 62.11358642578125 309.1976318359375 62.11358642578125 C 412.6975708007813 62.11358642578125 414.0373229980469 57.05078125 414.0373229980469 57.05078125 L 414 181.5451507568359 L 0 181.5451507568359 L 0 0 Z" fill="#e47c6e" fill-opacity="0.36" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="-0.059552" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ffe47c6e"  /><stop offset="0.140507" stop-color="#ede47c6e" stop-opacity="0.93" /><stop offset="0.562264" stop-color="#ffe47c6e"  /><stop offset="1.0" stop-color="#ffe8796a"  /><stop offset="1.0" stop-color="#a65c1257" stop-opacity="0.65" /></linearGradient></defs><path transform="translate(0.0, 581.71)" d="M 0 0 C 0 0 83.58815765380859 4.071007251739502 119.2032241821289 19.1370906829834 C 156.2508239746094 34.80923843383789 224.9571838378906 54.5899658203125 277.949462890625 54.5899658203125 C 381.4494018554688 54.5899658203125 414 38.3751220703125 414 38.3751220703125 L 414 154.2924041748047 L 0 154.2924041748047 L 0 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
