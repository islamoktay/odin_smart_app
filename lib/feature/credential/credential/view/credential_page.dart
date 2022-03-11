import 'package:flutter/material.dart';

import '../../../../core/_core_exports.dart';
import '../../../_feature_exports.dart';

class CredentialPage extends StatefulWidget {
  const CredentialPage({Key? key}) : super(key: key);

  @override
  _CredentialPageState createState() => _CredentialPageState();
}

class _CredentialPageState extends State<CredentialPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingConstants.generalPagePadding,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 30),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(ImageConstants.iconLogo),
              ),
              const SizedBox(height: 20),
              SizedBox(height: 84, width: 194, child: Image.asset(ImageConstants.textLogo)),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: TabBar(
                  controller: _tabController,
                  unselectedLabelColor: AppColors.purpleColor,
                  labelColor: AppColors.secondaryColor,
                  labelStyle: AppTextStyles.bodyTextStyleWhite,
                  tabs: const [
                    Tab(
                      text: "Login",
                    ),
                    Tab(
                      text: "Sign Up",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 300,
                child: TabBarView(
                  controller: _tabController,
                  children: const [LoginBody(), SignUpBody()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
