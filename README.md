# Alternate Icon Demo

Demo for changing icon dynamically for iOS app.

There are many similar examples on github. What's different here is it talks much about **how to provide different sizes of the alternate icon**, like the default one specific in the asset catelog.

<p align="center"><img src="/animation.gif" width="300"></p>

## TLDR

This function is implemented using the new API intruduced in 10.3. The steps are very simple:

 - config the `info.plist` with `CFBundleAlternateIcons` key 
 - call `UIApplication.setAlternateIconName(_:completionHandler:)`

There are 3 pieces of documentaion about alternate icon ([^1](https://developer.apple.com/documentation/uikit/uiapplication/2806818-setalternateiconname), [^2](https://developer.apple.com/library/content/documentation/General/Reference/InfoPlistKeyReference/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009247), [^3](https://developer.apple.com/ios/human-interface-guidelines/graphics/app-icon/)), but they are all very sketchy. Some extra note by my experience is here:

- Omit the `CFBundlePrimaryIcon` key in `info.plist`. So you could continue to use the icons in asset catelog.
- Put the alternate icon images in the target bundle, not in the asset catelog.
- Provide multiple sizes of the alternate icon:
  - no @2x/@3x suffix
  - put all filenames in `CFBundleIconFiles` key, no order required.
  - filenames could be arbitrary. System will automatically pick the right resolution.
  
Chinese Version [here](https://zhuanlan.zhihu.com/p/27469113)
