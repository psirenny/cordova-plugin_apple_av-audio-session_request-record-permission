// @flow

export default (): Promise<boolean> => (
  new Promise((resolve, reject) => global.cordova.exec(
    resolve,
    reject,
    'AppleAVAudioSessionRequestRecordPermission',
    'exec',
  ))
);
