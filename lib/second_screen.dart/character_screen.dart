import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_code_examples/second_screen.dart/bloc/character_bloc.dart';
import 'package:light_code_examples/second_screen.dart/widgets/character_info.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  late CharacterBloc _characterBloc;

  @override
  void initState() {

    _characterBloc = CharacterBloc();
    _characterBloc.add(GetCharacterEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[ Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40.w, top: 30.h),
              child: SizedBox(
                width: 330.w,
                height: 70.h,
                child: Text(
                  'Актеры фильма "Во все тяжкие"',
                  style: TextStyle(fontSize: 24.sp, color: Colors.redAccent),
                ),
              ),
            ),
            SizedBox(height:20.h),
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: BlocConsumer<CharacterBloc, CharacterState>(
                listener: (context, state) {},
                bloc: _characterBloc,
                builder: (context, state) {
                  if (state is CharacterLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is CharacterErrorState) {
                    return ElevatedButton(
                        onPressed: () {
                          _characterBloc.add(GetCharacterEvent());
                        },
                        child: Text("try again"));
                  }
                  if (state is CharacterSuccesState) {
                    return Container(
                      width: 1.sw,
                      height:1.sh ,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.blue,
                          Colors.red,
                        ],
                      )),
                      margin: EdgeInsets.only(bottom: 10.h),
                      child: ListView.builder(
                       
                          itemCount: state.model.length,
                          itemBuilder: ((context, index) => CharacterInfo(
                            portrayed: state.model[index].portrayed?? "umknown portrayed",
                              status: state.model[index].status ?? "unknown status",
                              name: state.model[index].name ?? "unknown name",
                              birthday: state.model[index].birthday.toString(),
                              nickname:
                                  state.model[index].nickname ?? "unknown nickname"))),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ),
          ],
        ),
        ]),
    );
  }
}
