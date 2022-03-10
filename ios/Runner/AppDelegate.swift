import UIKit
import Flutter
import Firebase
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
       GMSServices.provideAPIKey("AIzaSyAQazviSrimsuP8NhZ72Cd-usKdBNgUMTk")
      if(FirebaseApp.app() == nil){
          FirebaseApp.configure()
      }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
