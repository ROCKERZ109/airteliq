import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:lottie/lottie.dart';
import 'dart:convert';
import 'package:untitled/sizeConfig.dart';
import 'package:http/http.dart' as http;

class Changed extends StatefulWidget {
  static const id = 'BotScreen';
  static const _spreadsheetid = '1JbmH6VMFR5pVzbv3i8AYYK3CS_yT-gGf';
  static const _credentials = r'''{
  "type": "service_account",
  "project_id": "sheetsdata-362916",
  "private_key_id": "aa08ca99058e61d41a4e497add8cc47072bca5d8",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC03/yQH4nhILlO\nH8oVwRhmdXQ5xDk43N9SjOIjvW+NFTI6f1q9raEsjOKlhuay5snCI1aYwBuwhOt+\nW5eayrzaR4nIWNhqj2fMvz7n79W1jGeIvbDrnN52HNf+NaBbwm2vHXsdUeNn1s8b\neALhbHAaVNVYrBiMkR5H1KXAi/vrOYqUTXHvC2IG5ByxgzDtoSSC2i1O6A2INwy/\nW8uqLv4SIQQBfcVeXlc4jU+REnNBjoE2fpsO75w4+Mc1t7fNNg3tKDVZipV/0wCf\nu90f0+wbMHXOgJCbeTSaq9sIwWmf927YdMCvdcdlCRzNHUJbStQxVqggpAQusPfu\nswD8APpLAgMBAAECggEAU1SsZfP50HwEk38m2e3r4Wx0fxatrEpqIvygRQoGJjAh\nQ30gH6oqSr2fv9YOXFbiliw0vcwoFaOvYTgueRS1fDUgP+razgFCt7xWbYH76hgF\nLSUDqRFNFoqEYmxvdEb3xIlnCqOLCvCW21dnsFaGsULrRd6Hst863aoVMUfs6LoC\nb3k/XQtQph3WMy2B+eeygc+8TjU7MGa2NOgQ5xlCXuOZRb7UtW7IOl4WqgyQ/f1N\nEfeNmZ/D1lfDgHs1PrGXvD6nN8q0RhaK4AchNLoe8GkHoRqeMecn1F83hvOxd0XT\nEbBmz3v1X5aAA5iP2WTeUR4qZvHX/aNRWIMhoGJpfQKBgQD1DyPH9vOQjr3z0Q4X\nE4JSkWKVoodJ75yiIOwcrT+RzIsiyqID/ROEBSsiOkI3TIKunFp6rTqywA74oIfY\nEqI92ranIJDHJ36Us9RGSyJU+xdRkChzPpxftHawQA+skHHyAyvqD47eRL2aPiqp\njhF4yhfbU7+/xiMUstQ1M+H4HQKBgQC880PQP2sLAYmDleCjemhgmKwnpChaLP0i\n/YN0AC1M5B6UX6cNcakPPsav27SsjIXvlHFCqd+zJyg4N1Sy8x5d/1rXcdJQ8YGt\nOTM/E/vpqRaEYKWOXa+ypTFqir0sNAhCZfBfR7jHkCNKaXeW0oAKrrZDkpG4PEAu\nVKdQmGg/hwKBgDu1VKKEKRQvs1iUtzooJri3c63By/TXzPIz01OpYrPDgqMXfCI8\np2SjXb8ZMskGe1DQB7ucOZET+pHZiz+6So2HnLlb1eqwVMcmibIW3GaYRzY4SaLK\nvo8TCVgoQ6loCFtPKoP9BnJhjVDnlL17QAaONwHZhf7T5/hDGjFcUtKBAoGBAJ7b\n+BvR9fFe7XrQO/m2JKNyOOtrPPHz+S+97RNOQsfu0zbz5MOM2BKVOP8JvTGFQ+ZV\n65OctxMszMfW3UNG3DUzR/DzJVwgcGJvQQK7joS5QNEzYH39joaoFI/67WmIpZkN\nk7bH2jcOnF0npwALItPYaC0PwawgG+XYDoPYX21pAoGAVRcoah7ehxojsNBfLbbQ\nteIGh1nGUJ9VKbJllygjw7BB5iDbaWGV+Fo7qxjyZuSUTnURRtO63JAaJ656Hckp\n0ujGkQqafOTbdnG2fXcFAPdRCtqV791BLFBfcGnXHqsZ8r4NL5SSI1wzDAzZYKX/\nBnCqrcPmeyhyP4K4DWmOXrk=\n-----END PRIVATE KEY-----\n",
  "client_email": "sheetsdata@sheetsdata-362916.iam.gserviceaccount.com",
  "client_id": "115364793472039847451",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/sheetsdata%40sheetsdata-362916.iam.gserviceaccount.com"
}
''';

  const Changed({Key? key}) : super(key: key);

  @override
  _ChangedState createState() => _ChangedState();
}

String pika = 'sd';
var answers = <Widget>[];
bool error = true;

class _ChangedState extends State<Changed> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: const Text(
            'ZuLu',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Nunito Sans',
                fontSize: 25,
                fontWeight: FontWeight.w900),
          ),
          actions: [
            Container(
                margin: const EdgeInsets.only(right: 50),
                height: 500,
                width: 100,
                child: Lottie.asset('assets/bot.json', height: 500, width: 300))
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Color(0xFF0D053F),
                Color(0xFF0D053F),
                Color(0xFF0D053F),
                Color(0xFF221A68),
                Color(0xFF221A68)
              ])),
          height: SizeConfig.safeBlockVertical * 100,
          width: SizeConfig.safeBlockHorizontal * 100,
          child: Stack(children: [
            Positioned(
              top: SizeConfig.safeBlockVertical * 5,
              bottom: SizeConfig.safeBlockVertical * 9.5,
              child: SizedBox(
                height: SizeConfig.safeBlockVertical * 87.5,
                width: SizeConfig.safeBlockHorizontal * 100,
                child: SingleChildScrollView(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: answers,
                  ),
                ),
              ),
            ),
            Positioned(
              top:20,
              left: 150,
              child: Container(
              margin:
              const EdgeInsets.only(right: 25, top: 15),
              constraints:
              const BoxConstraints(maxWidth: 235),
              child: Material(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff4AAB98),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                     'Hi Zulu. I am stuck in traffic. It\'s very noisy here',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          fontFamily: 'Nunito Sans'),
                    ),
                  )),
            ),),
            Positioned(
              top:100,
              left: 10,
              child: Container(
              margin:
              const EdgeInsets.only(right: 25, top: 15),
              constraints:
              const BoxConstraints(maxWidth: 235),
              child: Material(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff2D325A),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                     'Don\'t worry. Here is some peaceful music for you!',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          fontFamily: 'Nunito Sans'),
                    ),
                  )),
            ),),   Positioned(
              top:219,
              left: 10,
              child: Container(
              margin:
              const EdgeInsets.only(right: 25, top: 15),
              constraints:
              const BoxConstraints(maxWidth: 235),
              child: Material(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff2D325A),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                         'Love of my life - Queen  ',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              fontFamily: 'Nunito Sans'),
                        ),
                        Icon(Icons.link_outlined,color: Colors.blue,)
                      ],
                    ),
                  )),
            ),),
            Positioned(
              top:170,
              left: 10,
              child: Container(
              margin:
              const EdgeInsets.only(right: 25, top: 15),
              constraints:
              const BoxConstraints(maxWidth: 319),
              child: Material(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff2D325A),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                         'Vincent (Starry Night) - Don Mclean  ',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              fontFamily: 'Nunito Sans'),
                        ),
                        Icon(Icons.link_outlined,color: Colors.blue,)
                      ],
                    ),
                  )),
            ),),

            // Positioned(
            // top: 170,
            //     child:  Container(
            //   margin:const EdgeInsets.only(left: 10, top: 15),
            //   constraints:const BoxConstraints(maxWidth: 255),
            //   child: Material(
            //       borderRadius: BorderRadius.circular(5),
            //       color: const Color(0xff22236A),
            //       child: Padding(
            //         padding: const EdgeInsets.all(3.0),
            //         child: Image.asset('assets/kerala.jpg'),
            //       )),
            // )
            // ),
            Positioned(
                bottom: SizeConfig.safeBlockVertical * 2.5,
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: SizeConfig.safeBlockVertical * 4.5,
                  width: SizeConfig.safeBlockHorizontal * 75,
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(7.5),
                        focusColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          gapPadding: 2.0,
                          borderSide: BorderSide(
                              color: Colors.greenAccent, width: 1.50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          gapPadding: 2.0,
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.50,
                          ),
                        ),
                        hintText: 'Write a message',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                )),
            Positioned(
                bottom: SizeConfig.safeBlockVertical * 2.5,
                right: 0,
                child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: SizeConfig.safeBlockVertical * 5,
                    width: SizeConfig.safeBlockHorizontal * 25,
                    child: FloatingActionButton(
                        backgroundColor: const Color(0xFF0D052F),
                        child: const Icon(
                          Icons.send,
                          size: 25,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: const EdgeInsets.only(right: 25, top: 15),
                              constraints: const BoxConstraints(maxWidth: 200),
                              child: Material(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff4AAB98),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'request',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17.5,
                                          fontFamily: 'Nunito Sans'),
                                    ),
                                  )),
                            ),
                          );
                        })))
          ]),
        ),
      ),
    );
  }
}
