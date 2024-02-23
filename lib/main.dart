import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/config/routes/app_router.dart';

void main() {
  runApp(
    ScreenUtilInit(
      builder: (context, child) => MaterialApp.router(
        title: 'Music App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          fontFamily: 'OpenSans-Regular',
          useMaterial3: true,
        ),
        routerConfig: AppRouter.router,
      ),
    ),
  );
}
