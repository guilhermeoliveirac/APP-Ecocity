import 'package:ecocity/main.dart';
import 'package:ecocity/src/model/supabase_db.dart';
import 'package:ecocity/src/model/warnings.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuth {
  static Future<void> signUp({
    required BuildContext context,
    required String email,
    required String password,
    void Function()? function,
  }) async {
    try {
      final dbInstance = SupabaseDb.supabase;
      final response = await dbInstance.auth.signUp(
        email: email,
        password: password,
      );

      if (response.user != null) {
        if (context.mounted) {
          CustomWarnings.showSuccessSnackBar(
            context: context,
            label: "Usuário cadastrado com sucesso",
          );
          function?.call();
        }
      } else {
        if (context.mounted) {
          CustomWarnings.showFailSnackBar(
            context: context,
            label: "Não foi possível fazer o cadastro",
          );
        }
      }
    } on AuthException catch (error) {
      if (context.mounted) {
        CustomWarnings.showFailSnackBar(
          context: context,
          label: "Erro de autenticação: ${error.message}",
        );
      }
    } catch (error) {
      if (context.mounted) {
        CustomWarnings.showFailSnackBar(
          context: context,
          label: "Ocorreu um erro: $error",
        );
      }
    }
  }

  static Future<void> signIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      final dbInstance = SupabaseDb.supabase;
      final response = await dbInstance.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user != null) {
        if (response.user != null) {
          if (context.mounted) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.home,
              (Route<dynamic> route) => false,
            );
          }
        }
      } else {
        if (context.mounted) {
          CustomWarnings.showFailSnackBar(
            context: context,
            label: "Não foi possível fazer o login",
          );
        }
      }
    } on AuthException catch (error) {
      if (context.mounted) {
        CustomWarnings.showFailSnackBar(
          context: context,
          label: "Erro de autenticação: ${error.message}",
        );
      }
    } catch (error) {
      if (context.mounted) {
        CustomWarnings.showFailSnackBar(
          context: context,
          label: "Ocorreu um erro: $error",
        );
      }
    }
  }

  static Future<void> signOut(BuildContext context) async {
    try {
      final dbInstance = SupabaseDb.supabase;
      await dbInstance.auth.signOut();

      if (context.mounted) {
        CustomWarnings.showSuccessSnackBar(
          context: context,
          label: "Usuário deslogado com sucesso",
        );
      }
    } on AuthException catch (error) {
      if (context.mounted) {
        CustomWarnings.showFailSnackBar(
          context: context,
          label: "Erro de autenticação ao deslogar: ${error.message}",
        );
      }
    } catch (error) {
      if (context.mounted) {
        CustomWarnings.showFailSnackBar(
          context: context,
          label: "Ocorreu um erro ao deslogar: $error",
        );
      }
    }
  }
}
