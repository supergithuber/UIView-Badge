## UIView+WXBadge

![badge](https://github.com/supergithuber/UIView-Badge/blob/master/badge.gif)


### usage

```
- (void)wx_showBadge:(NSString *)badgeText;
- (void)wx_showBadge:(NSString *)badgeText appearance:(nonnull WXBadgeAppearance *)appearance;
- (void)wx_showBadge:(NSString *)badgeText appearance:(nonnull WXBadgeAppearance *)appearance edgeInset:(UIEdgeInsets)inset;
```

#### When your pass nil badgeText to interface, The badge will be removed

```
[view wx_showBadge:nil];
```

#### Set badge appearance

```
WXBadgeAppearance *appearance = [WXBadgeAppearance new];
appearance.backgroundColor = [UIColor greenColor];
appearance.textSize = 12;
appearance.textColor = [UIColor whiteColor];

[yellowButton wx_showBadge:@"hahahaha" appearance:appearance];
```

#### Badge Appearance Property

```
@property (nonatomic, strong)UIColor* backgroundColor;
@property (nonatomic, assign)CGFloat textSize;
@property (nonatomic, strong)UIColor* textColor;
@property (nonatomic, strong)UIColor* borderColor;
@property (nonatomic, assign)CGFloat borderWidth;
@property (nonatomic, assign)NSTextAlignment textAlignment;
@property (nonatomic, assign)BOOL animated;
@property (nonatomic, assign)NSTimeInterval duration;
@property (nonatomic, assign)BOOL allowShadow;
@property (nonatomic, assign)CGFloat distanceFromCenterX;
@property (nonatomic, assign)CGFloat distanceFromCenterY;
```

### import

import files
"UIView+WXBadge.h" and "UIView+WXBadge.m" to your project