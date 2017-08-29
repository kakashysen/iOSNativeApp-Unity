# iOSNativeApp-Unity
Asimple example that add Unity Game in existing iOS native app. 

This project follow the guide https://github.com/blitzagency/ios-unity5 and required 
this project https://github.com/kakashysen/unity-test-ios

## How to use

- Clone the unity test git@github.com:kakashysen/unity-test-ios.git
- Open it in Unity and buld and export the iOS project
- Locate the place where export the iOS project and copy the path (this is requiered for a little configuration later)
- Clone this project git@github.com:kakashysen/iOSNativeApp-Unity.git
- Open it in Xcode and replace the path `/Users/TappsiOS/Test/build/iOS` by `you own export iOS build path` 
this path you can find in Xcode Project ` Build Settings` -> `User-Dfined` -> `UNITY_IOS_EXPORT_PATH`
- Change the unity version that you use and replace it in Xcode Project ` Build Settings` -> `User-Dfined` -> `UNITY_RUNTIME_VERSION`
- Build and Run the project. __This project only compile and run in a real device if you try to compile in a simulator you can find many problems__


