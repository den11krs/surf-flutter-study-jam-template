import 'package:flutter/material.dart';
import 'package:surf_practice_chat_flutter/features/auth/repository/auth_repository.dart';
import 'package:surf_practice_chat_flutter/features/auth/screens/auth_screen.dart';
import 'package:surf_study_jam/surf_study_jam.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class AppColors {
  static const appMainColor = 0xFF006e17;
}

/// App,s main widget.
class MyApp extends StatelessWidget {
  /// Constructor for [MyApp].
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: const Color(AppColors.appMainColor),
              secondary: Colors.yellow,
            ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(AppColors.appMainColor),
          selectionColor: Color(AppColors.appMainColor),
          selectionHandleColor: Color(AppColors.appMainColor),
        ),
      ),
      home: AuthScreen(
        authRepository: AuthRepository(StudyJamClient()),
      ),
    );
  }
}
