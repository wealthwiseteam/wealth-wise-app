part of '../settings_page.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = AuthCubit.getInstance(context);
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (_, current) => current is LogoutState,
      listener: (context, state) {
        if (state is LogoutLoadingState) {
          cubit.changeSnipper();
        } else {
          if (cubit.spinner) {
            cubit.changeSnipper(); // set false
          }
          if (state is LogoutErrorState) {
            MySnackBar.error(
              message: state.error,
              color: Colors.red,
              context: context,
            );
          } else if (state is LogoutSuccessState) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutes.login,
              (_) => false,
            );
          }
        }
      },
      child: ModalProgressHUD(
        inAsyncCall: cubit.spinner,
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(32),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 26.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BlocBuilder<AuthCubit, AuthState>(
                  buildWhen: (_, current) => current is LogoutState,
                  builder: (context, state) {
                    if (state is LogoutLoadingState) {
                      return const CircularProgressIndicator(
                        color: AppColors.red,
                      );
                    } else {
                      return PublicText(
                        txt: S.of(context).logout,
                        color: AppColors.red,
                        size: 20.sp,
                        fw: FontWeight.w600,
                      );
                    }
                  },
                ),
                20.ph,
                const PublicDivider(
                  width: double.infinity,
                  color: AppColors.grey,
                ),
                10.ph,
                PublicText(
                  txt: S.of(context).logoutWarning,
                ),
                34.ph,
                PublicButton(
                  onPressed: () {
                    cubit.logout();
                  },
                  title: S.of(context).yesLogout,
                  width: 200.w,
                ),
                14.ph,
                PublicOutlineButton(
                  onPressed: () => Navigator.pop(context),
                  title: S.of(context).cancel,
                  width: 200.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
