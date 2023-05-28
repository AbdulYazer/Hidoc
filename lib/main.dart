import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidoc/application/bloc/home_page_bloc.dart';
import 'package:hidoc/core/constants/constants.dart';
import 'package:hidoc/presentation/home_screen/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/core/di/injectable.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomePageBloc>(),
        ),
      ],
      child:
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hidoc',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen(),
        ),
    );
  }
}

