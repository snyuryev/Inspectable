# Inspectable

Sample of IBInspectable and IBDesignable.

With XCode 6 it is possible to build custom interface and design without restarting app.

![Alt text](https://github.com/snyuryev/Inspectable/blob/master/Inspectable.png "IBInspectable")

1. CustomTextField (custom UITextField)
    * clearButtonImage - setup image for cleat button
    * allCornersRadius - setup corners radius, all corners
    * topCornersRadius - setup corners radius, top corners
    * bottomCornersRadius - setup corners radius, bottom corners 
    * placeholderColor - setup color of placeholder
2. CustomView (custom UIView)
    * cornerRadius - setup corner radius
    * borderWidth - setup border width
    * borderColor - setup border color 
3. extension UIView (applied for all UIViews - should be incomment first)
    * cornerRadius - setup corner radius
    * borderWidth - setup border width
    * borderColor - setup border color

According http://nshipster.com/ and the article about IBInspectable and IBDesignable.
More info - http://nshipster.com/ibinspectable-ibdesignable/
