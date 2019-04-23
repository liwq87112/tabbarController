#1、不支持左滑最简单粗暴两个tabbarController跳转
* 跳转    
点击跳转直接设置window的RootViewController为第二个tabbarController就可以跳转
* 返回
点击返回直接设置windon的的RootViewController为第一个tabbarController就可以返回

#2、支持左滑两个tabbarController跳转
   1、一般想到的肯定是是push跳转
```
 SecondTabbarController *tabbarVC = [[SecondTabbarController alloc] init];
        [self.navigationController pushViewController:tabbarVC animated:YES];
```
这样跳转过去就支持左滑.错没错呢,肯定没有错了.只是跳转过去导航栏没有隐藏,发现多了一个导航栏,如是隐藏导航栏就解决了
```
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}
```
#3、中间凸起
```
//重写button 高亮
- (void)setHighlighted:(BOOL)highlighted {}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if (self.isHidden == NO) {
        CGPoint newPoint = [self convertPoint:point toView:self.centerBtn];
        if ( [self.centerBtn pointInside:newPoint withEvent:event]) {
            return self.centerBtn;
        }else{
            return [super hitTest:point withEvent:event];
        }
    }
    else {
        return [super hitTest:point withEvent:event];
    }
}
```
附上demo [tabbarController](https://github.com/liwq87112/tabbarController.git "tabbarController")
