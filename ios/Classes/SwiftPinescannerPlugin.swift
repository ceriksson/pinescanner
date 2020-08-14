import Flutter
import UIKit

public class SwiftPinescannerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let viewFactory = QRViewFactory(withRegistrar: registrar)
    let channel = FlutterMethodChannel(name: "pinescanner", binaryMessenger: registrar.messenger())
    let instance = SwiftPinescannerPlugin()
    registrar.register(viewFactory, withId: "pinescanner")
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}

