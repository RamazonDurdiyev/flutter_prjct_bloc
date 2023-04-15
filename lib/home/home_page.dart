import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_prjct_bloc/home/home_bloc.dart';
import 'package:flutter_prjct_bloc/home/home_event.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final bloc = Homebloc();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Mobile tasbeh"),
          backgroundColor: Colors.blueGrey,
        ),
        body: BlocBuilder(
          bloc: bloc,
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        'All: ${bloc.zikrCounterSum}',
                        style: const TextStyle(
                            color: Colors.blueGrey, fontSize: 32),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        bloc.add(IncrementEvent());
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "${bloc.zikrCounter}",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 32),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  bloc.changeCounter < 1
                      ? "Please start with keyword 'BISMILLAH'"
                      : bloc.zikr,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: bloc.changeCounter < 1 ? 14 : 32),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
