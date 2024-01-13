import 'package:book_store_app/constants.dart';
import 'package:book_store_app/core/utils/servise_located.dart';
import 'package:book_store_app/feature/home/data/repo/hom_repo_imple.dart';
import 'package:book_store_app/feature/home/presentation/views_model/book_list_cubit/home_books_list_cubit.dart';
import 'package:book_store_app/feature/home/presentation/views_model/newest_books_list_cubit/newest_books_list_cubit.dart';
import 'package:book_store_app/feature/splash/presentation/views/splach_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpServiseLocated();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewestBooksListCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewsetBooks(),
        ),
        BlocProvider(
          create: (context) => HomeBooksListCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFutureBooks(),
        ),
        
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        home: const SplachView(),
      ),
    );
  }
}
