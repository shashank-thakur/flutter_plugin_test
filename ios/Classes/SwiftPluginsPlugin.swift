import Flutter
import UIKit

public class SwiftPluginsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugins", binaryMessenger: registrar.messenger())
    let instance = SwiftPluginsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if(call.method.elementsEqual("showName")) {
        let test = TestingBridge()
        
        UIAlertView(title: test.getName(), message: "call from plugin dart", delegate: nil, cancelButtonTitle: "ok").show()
    }
    result("iOS " + UIDevice.current.systemVersion)
  }
}
