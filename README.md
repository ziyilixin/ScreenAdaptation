# ScreenAdaptation
屏幕适配方案

屏幕截图
## 方案一
![](https://github.com/ziyilixin/ScreenAdaptation/blob/master/ScreenAdaptation/ScreenAdaptation/PlanA/PlanA-iPhone%20X.png?raw=true)
## 方案二
![](https://github.com/ziyilixin/ScreenAdaptation/blob/master/ScreenAdaptation/ScreenAdaptation/PlanB/PlanB-iPhone%20X.png?raw=true)

## 方案一
```objc
#define FQWidth(w) (SCREEN_WIDTH * ((w) /SCREEN_FWIDTH))
#define SCREEN_FWIDTH (float)375.0f
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

/**是否3.5寸屏*/
#define is3_5Inch             ([UIScreen mainScreen].bounds.size.height == 480.0)
/**是否4寸屏 */
#define is4Inch             ([UIScreen mainScreen].bounds.size.height == 568.0)
/**是否4.7寸屏**/
#define is4_7Inch             ([UIScreen mainScreen].bounds.size.height == 667.0)
/**是否5.8寸屏**/
#define is5_8Inch             ([UIScreen mainScreen].bounds.size.height == 812.0)

#define FONTSIZE ((is3_5Inch||is4Inch)?0.8:(is4_7Inch||is5_8Inch)?1.0:1.1)
#define FONTS(FONTNAME,F) [[UIDevice currentDevice].systemVersion doubleValue]<9.0?[UIFont systemFontOfSize:F*FONTSIZE]:[UIFont fontWithName:FONTNAME size:F*FONTSIZE]
```

## 方案二
```objc
// 屏幕高度
#define Height [UIScreen mainScreen].bounds.size.height
// 屏幕宽度
#define Width [UIScreen mainScreen].bounds.size.width
#define iPhone6sW 375.0
#define iPhone6sH 667.0
// 计算比例
// x比例
#define ScaleX Width / iPhone6sW
// y比例
#define ScaleY Height / iPhone6sH
// X坐标
#define LineX(l) l*ScaleX
// Y坐标
#define LineY(l) l*ScaleY

// 字体
#define Font(x) [UIFont systemFontOfSize:x*ScaleX]
```
