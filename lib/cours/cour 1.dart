import 'dart:io';
import 'dart:math';
// import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../provider/image.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:just_audio/just_audio.dart';

final TextEditingController _textEditingController = TextEditingController();

class cour1 extends StatefulWidget {
  final String? isAdmin;
  const cour1({super.key, required this.isAdmin});

  @override
  State<cour1> createState() => _cour1State();
}

class _cour1State extends State<cour1> {
  File? _pickedImage;
  ImagePicker? imagePicker;
  final ImagePicker _picker = ImagePicker();

  // picture _image = picture();

  final Random _random = Random();
  String? imageUrl1;
  String? text;
  AudioPlayer audioPlayer = AudioPlayer();
  // bool isPlaying = false;

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  String generateRandomName(int length) {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(_random.nextInt(chars.length))));
  }

  //! edheya fonction li shtjib données mn database
  var cour_data;

  @override
  void initState() {
    getUser_Data();
    super.initState();
  }

  Future<DocumentSnapshot> getUser_Data() async {
    var result1 =
        await FirebaseFirestore.instance.collection('cours').doc("1").get();
    setState(() {
      cour_data = result1;
    });
    return result1;
  }
  //! end

  int currentStep = 0;
  List<Step> getSteps() => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: Text(
            "",
            style: GoogleFonts.raleway(fontSize: 12),
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onLongPress: () async {
                  if (widget.isAdmin == 'true') {
                    addGallery();
                    print('image picked');

                    final randomName = generateRandomName(10);
                    //? edheya script li yaaml upload
                    final ref = FirebaseStorage.instance
                        .ref()
                        .child('cour 1')
                        .child(randomName + '.jpg');
                    await ref.putFile(_pickedImage!);
                    //? edheya script li yekhou lien baed upload
                    imageUrl1 = await ref.getDownloadURL();

                    print(imageUrl1);
                    //? baed ma5dhyt lien shn7otou fil firestore fi blastou *example img1*
                    FirebaseFirestore.instance
                        .collection('cours')
                        .doc('1')
                        .update({"img1": imageUrl1});
                    EasyLoading.showSuccess("L'image à été mettre a jour");
                  }
                },
                child: Image.network(
                  //! lezem tkoun image.network
                  //? cour_data["ismha fil firestore"]
                  cour_data["img1"],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              InkWell(
                onLongPress: () {
                  print(widget.isAdmin);
                  if (widget.isAdmin == 'true') {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'modifier le text',
                                style: GoogleFonts.montserratAlternates(),
                              ),
                            ],
                          ),
                          content: TextField(
                            onChanged: (value) {
                              text = value;
                            },
                          ),
                          actions: <Widget>[
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle:
                                    Theme.of(context).textTheme.labelLarge,
                              ),
                              child: Text(
                                'Annuler',
                                style: GoogleFonts.montserrat(),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle:
                                    Theme.of(context).textTheme.labelLarge,
                              ),
                              child: Text(
                                'mettre à jour',
                                style: GoogleFonts.montserrat(),
                              ),
                              onPressed: () async {
                                await FirebaseFirestore.instance
                                    .collection('cours')
                                    .doc('1')
                                    .update({"text1": text});
                                EasyLoading.showSuccess(
                                    "Le texte à été mettre a jour");
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text(
                  cour_data["text1"],
                  style: GoogleFonts.montserrat(fontSize: 25, letterSpacing: 4),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              InkWell(
                onLongPress: () async {
                  print(widget.isAdmin);
                  final result = await FilePicker.platform.pickFiles(
                    type: FileType.audio,
                    allowMultiple: false,
                  );

                  if (result != null) {
                    final file = File(result.files.single.path!);
                    // do something with the selected file

                    final randomName = generateRandomName(10);
                    //? edheya script li yaaml upload
                    final ref = FirebaseStorage.instance
                        .ref()
                        .child('cour 1')
                        .child(randomName + '.mp3');
                    await ref.putFile(file);

                    var sonUrl = await ref.getDownloadURL();
                    print(sonUrl);
                    FirebaseFirestore.instance
                        .collection('cours')
                        .doc('1')
                        .update({"son1": sonUrl});
                    EasyLoading.showSuccess("L'audio à été mettre a jour");
                  }
                },
                child: IconButton(
                  onPressed: () async {
                    print('bonj');
                    Uri uri = Uri.parse(cour_data["son1"]);
                    final source = AudioSource.uri(uri);
                    // if (isPlaying) {
                    //   await audioPlayer.stop();
                    //   setState(() {
                    //     isPlaying = false;
                    //   });
                    // }
                    // else {
                    await audioPlayer.setAudioSource(source);
                    await audioPlayer.play();
                    // setState(() {
                    //   isPlaying = true;
                    // });
                    // }
                    // final source = UriAudioSource(
                    //   uri :
                    // )
                    // final source = UriAudioSource(
                    //   uri = uri

                    //   // id: uri.toString(),
                    //   // uri: uri.toString(),
                    // );

                    // if (isPlaying) {
                    //   await audioPlayer.stop();
                    //   setState(() {
                    //     isPlaying = false;
                    //   });
                    // } else {
                    //   await audioPlayer.play(Uri.parse(
                    //       "https://firebasestorage.googleapis.com/v0/b/e-learning-293fd.appspot.com/o/cour%201%2Fb6xxidneox.mp3?alt=media&token=44b5e7f9-3cae-410b-b0a2-7c295a48f87d"));
                    //   setState(() {
                    //     isPlaying = true;
                    //   });
                    // }
                    //  int result =
                    // await audioPlayer.play(cour_data["son1"]);
                    // if (result == 1) {
                    //   // success
                    //   print('Audio played successfully');
                    // } else {
                    //   // error
                    //   print('Error playing audio');
                    // }
                    // final ref = cour_data["son1"];
                    // print(ref);

                    // final url = await ref;

                    // final player = AudioPlayer();

                    // if (player == 1) {
                    //   await player.play(url);
                    //   // success
                    // } else {
                    //   print("");
                    // }
                  },
                  icon: Icon(
                    CupertinoIcons.speaker_3_fill,
                    size: 40,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
        Step(
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: Text(
            'Bonsoir',
            style: GoogleFonts.raleway(fontSize: 12),
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/half-moon.png",
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Bonsoir",
                style: GoogleFonts.montserrat(fontSize: 25, letterSpacing: 4),
              ),
              SizedBox(
                height: 35,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.speaker_3_fill,
                  size: 40,
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
        Step(
          state: currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: Text(
            'Bonne nuit',
            style: GoogleFonts.raleway(fontSize: 12),
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/day.png",
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Bonne nuit",
                style: GoogleFonts.montserrat(fontSize: 25, letterSpacing: 4),
              ),
              SizedBox(
                height: 35,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.speaker_3_fill,
                  size: 40,
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
        Step(
            state: currentStep > 3 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text(
              '',
              style: GoogleFonts.raleway(fontSize: 12),
            ),
            content: Column(
              children: [
                Image.asset(
                  "assets/images/5.png",
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.speaker_3_fill,
                    size: 40,
                  ),
                ),
              ],
            )),
        Step(
            state: currentStep > 4 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text(
              '',
              style: GoogleFonts.raleway(fontSize: 12),
            ),
            content: Column(
              children: [
                Image.asset(
                  "assets/images/6.png",
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.speaker_3_fill,
                    size: 40,
                  ),
                ),
              ],
            )),
        Step(
            state: currentStep > 5 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text(
              '',
              style: GoogleFonts.raleway(fontSize: 12),
            ),
            content: Column(
              children: [
                Image.asset(
                  "assets/images/7.png",
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.speaker_3_fill,
                    size: 40,
                  ),
                ),
              ],
            )),
        Step(
            state: currentStep > 6 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text(
              '',
              style: GoogleFonts.raleway(fontSize: 12),
            ),
            content: Column(
              children: [
                Image.asset(
                  "assets/images/8.png",
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.speaker_3_fill,
                    size: 40,
                  ),
                ),
              ],
            )),
        Step(
            state: currentStep > 7 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text(
              '',
              style: GoogleFonts.raleway(fontSize: 12),
            ),
            content: Column(
              children: [
                Image.asset(
                  "assets/images/9.png",
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.speaker_3_fill,
                    size: 40,
                  ),
                ),
              ],
            )),
        Step(
            state: currentStep > 8 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text(
              '',
              style: GoogleFonts.raleway(fontSize: 12),
            ),
            content: Column(
              children: [
                Image.asset(
                  "assets/images/10.png",
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.speaker_3_fill,
                    size: 40,
                  ),
                ),
              ],
            )),
        Step(
            state: currentStep > 9 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text(
              '',
              style: GoogleFonts.raleway(fontSize: 12),
            ),
            content: Column(
              children: [
                Image.asset(
                  "assets/images/11.png",
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.speaker_3_fill,
                    size: 40,
                  ),
                ),
              ],
            )),
      ];
  @override
  Widget build(BuildContext context) {
    // final image = Provider.of<picture>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Saluer",
            style: GoogleFonts.montserrat(
                letterSpacing: 4, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Stepper(
            elevation: 4,
            type: StepperType.vertical,
            steps: getSteps(),
            currentStep: currentStep,
            onStepContinue: () {
              final lastStep = currentStep == getSteps().length - 1;

              if (lastStep) {
                print('okk');
              } else {
                setState(() {
                  currentStep += 1;
                });
              }
            },
            onStepCancel: () {
              currentStep == 0
                  ? null
                  : setState(() {
                      currentStep -= 1;
                    });
            },
            controlsBuilder: (BuildContext context, ControlsDetails) {
              final lastStep = currentStep == getSteps().length - 1;
              return Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 130,
                      child: Expanded(
                          child: ElevatedButton(
                        onPressed: ControlsDetails.onStepContinue,
                        child: Text(
                          lastStep ? 'Cour suivant' : 'Suivant',
                          style: GoogleFonts.raleway(),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                lastStep ? Colors.pinkAccent : Colors.pink,
                            shape: RoundedRectangleBorder(
                                side: BorderSide.none,
                                borderRadius: BorderRadius.circular(15))),
                      )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    if (currentStep != 0)
                      SizedBox(
                        width: 100,
                        child: Expanded(
                            child: ElevatedButton(
                          onPressed: ControlsDetails.onStepCancel,
                          // lastStep ?  : ControlsDetails.onStepCancel,

                          child: Text(
                            'Précedent',
                            style: GoogleFonts.raleway(),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15))),
                        )),
                      ),
                  ],
                ),
              );
            }));
  }

  // File get imagee => _pickedImage!;
  addCamera() async {
    XFile? pickedFile = await _picker.pickImage(source: ImageSource.camera);
    _pickedImage = File(pickedFile!.path);

    if (_pickedImage != null) {
      _pickedImage;
    } else {}
  }

  addGallery() async {
    XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    _pickedImage = File(pickedFile!.path);

    if (_pickedImage != null) {
      _pickedImage;
    } else {}
  }

  // Future<void> _dialogBuilder(String text) {
  //   return showDialog<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Text(
  //               'modifier le text',
  //               style: GoogleFonts.montserratAlternates(),
  //             ),
  //           ],
  //         ),
  //         content: TextField(
  //           onChanged: (value) {
  //             text = value;
  //           },
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             style: TextButton.styleFrom(
  //               textStyle: Theme.of(context).textTheme.labelLarge,
  //             ),
  //             child: Text(
  //               'Annuler',
  //               style: GoogleFonts.montserrat(),
  //             ),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //           TextButton(
  //             style: TextButton.styleFrom(
  //               textStyle: Theme.of(context).textTheme.labelLarge,
  //             ),
  //             child: Text(
  //               'mettre à jour',
  //               style: GoogleFonts.montserrat(),
  //             ),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
