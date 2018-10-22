import AVFoundation

@objc(AppleAVAudioSessionRequestRecordPermission)
class AppleAVAudioSessionRequestRecordPermission: CDVPlugin {
  @objc(exec:) func exec(_ command: CDVInvokedUrlCommand) {
    AVAudioSession.sharedInstance().requestRecordPermission({ granted in
      let result = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: granted)
      self.commandDelegate!.send(result, callbackId: command.callbackId)
    })
  }
}
