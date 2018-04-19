//
//  ViewController.m
//  BannerRightLeftCycle
//
//  Created by zscftwo on 2018/4/19.
//  Copyright © 2018年 iBest. All rights reserved.
//

#import "ViewController.h"

#import "HW3DBannerView.h"


#define KScreenWidth self.view.frame.size.width
#define KScreenHeight self.view.frame.size.height


@interface ViewController ()
@property (nonatomic,strong) HW3DBannerView *scrollView;
@property (nonatomic,strong) HW3DBannerView *scrollView1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


#pragma mark - 卡片滚动图
    _scrollView = [HW3DBannerView initWithFrame:CGRectMake(0, 100, KScreenWidth, 150) imageSpacing:10 imageWidth:KScreenWidth - 50];
    _scrollView.initAlpha = 0.5; // 设置两边卡片的透明度
    _scrollView.imageRadius = 10; // 设置卡片圆角
    _scrollView.imageHeightPoor = 10; // 设置中间卡片与两边卡片的高度差
    _scrollView.autoScroll = YES;

//    self.scrollView.data = @[@"h1.jpg",@"h2.jpg",@"h3.jpg",@"h4.jpg"];
    // 设置要加载的图片
        self.scrollView.data = @[@"http://pics.sc.chinaz.com/files/pic/pic9/201804/wpic476.jpg",@"http://pics.sc.chinaz.com/files/pic/pic9/201804/zzpic11319.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524138462444&di=39fcb213264e20666065027ff56263c2&imgtype=0&src=http%3A%2F%2Fimage.tianjimedia.com%2FuploadImages%2F2015%2F162%2F31%2F7DJ9LODRB1YB.jpg",@"http://h.hiphotos.baidu.com/image/pic/item/728da9773912b31b57a6e01f8c18367adab4e13a.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524138462444&di=36559e37cf389bd6732512499dfa754a&imgtype=0&src=http%3A%2F%2Fp1.wmpic.me%2Farticle%2F2015%2F03%2F04%2F1425431049_dXGEOhkM.jpg"];
    _scrollView.placeHolderImage = [UIImage imageNamed:@"h1.png"]; // 设置占位图片
    _scrollView.curPageControlColor = [UIColor redColor];
    [self.view addSubview:self.scrollView];
    _scrollView.clickImageBlock = ^(NSInteger currentIndex) { // 点击中间图片的回调

    };

#pragma mark - 普通滚动图
    _scrollView1 = [HW3DBannerView initWithFrame:CGRectMake(0, 300, KScreenWidth, 150) imageSpacing:0 imageWidth:KScreenWidth];
    _scrollView1.clickImageBlock = ^(NSInteger currentIndex) {

    };
    _scrollView1.autoScroll = YES;
    _scrollView1.curPageControlColor = [UIColor redColor];
    _scrollView1.placeHolderImage = [UIImage imageNamed:@"h1.jpg"]; // 设置占位图片
    self.scrollView1.data = @[@"http://d.hiphotos.baidu.com/image/pic/item/b7fd5266d016092408d4a5d1dd0735fae7cd3402.jpg"];
    [self.view addSubview:self.scrollView1];


}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
