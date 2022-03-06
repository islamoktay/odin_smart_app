import 'package:flutter/material.dart';
import 'package:odin_smart_app/feature/credential/_credential_exports.dart';

class CredentialPage extends StatefulWidget {
  const CredentialPage({Key? key}) : super(key: key);

  @override
  _CredentialPageState createState() => _CredentialPageState();
}

class _CredentialPageState extends State<CredentialPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ODIN APP"),
      ),
      body: SizedBox(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 50,
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                tabs: const [
                  Tab(
                    text: "Login",
                  ),
                  Tab(
                    text: "Sing Up",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: const [LoginBody(), SignUpBody()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
