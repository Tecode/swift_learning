//
//  VideoViewController.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/23.
//

#import "VideoViewController.h"
#import "VideoCoverCollectionViewCell.h"

@interface VideoViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation VideoViewController
- (instancetype)init {
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"视频";
        self.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/video_selected@2x.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //    Layout布局
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    layout.itemSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.width / 16*9);
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    [collectionView registerClass: [VideoCoverCollectionViewCell class] forCellWithReuseIdentifier:@"VideoCoverCollectionViewCell"];
    
    [self.view addSubview:collectionView];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"VideoCoverCollectionViewCell" forIndexPath:indexPath];
    //    if (!cell) {
    //        cell = [[UICollectionViewCell alloc] init];
    //    }
    if ([cell isKindOfClass: [VideoCoverCollectionViewCell class]]) {
        [(VideoCoverCollectionViewCell *)cell layoutWithVideoCoverUrl:@"icon.bundle/cover@3x.png" videoUrl:@"https://video.pearvideo.com/mp4/adshort/20181013/cont-1454190-12191519-122933_adpkg-ad_hd.mp4"];
    }
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    //    if (indexPath.row %3 == 0) {
    //        return CGSizeMake(self.view.frame.size.width, 200);
    //    }
    return CGSizeMake(self.view.bounds.size.width , self.view.bounds.size.width/16*9);
}

@end
