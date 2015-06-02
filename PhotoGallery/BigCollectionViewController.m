//
//  BigCollectionViewController.m
//  PhotoGallery
//
//  Created by Андрей Щербинин on 02.06.15.
//  Copyright (c) 2015 Андрей Щербинин. All rights reserved.
//

#import "BigCollectionViewController.h"
#import "BigCollectionViewCell.h"

@interface BigCollectionViewController ()
@property NSArray* photoArray;
@property NSIndexPath* imageIndexPath;
@end

@implementation BigCollectionViewController

@synthesize collectionView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [collectionView registerNib:[UINib nibWithNibName:@"BigCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"BigCell"];

}

-(id)initWithArray:(NSArray*)photoArray
{
    self = [super init];
    
    if (self) {
        _photoArray = [[NSArray alloc]initWithArray:photoArray];
    }
    
    return  self;
    
}

-(id)initWithArray:(NSArray *)photoArray andIndexPath:(NSIndexPath *)imageIndexPath
{
    self = [super init];
    
    if (self) {
        _photoArray = [[NSArray alloc]initWithArray:photoArray];
        _imageIndexPath = imageIndexPath;
    }
    
    return  self;
}

-(void)viewWillAppear:(BOOL)animated
{
  }

-(void)viewWillLayoutSubviews
{
    [self.collectionView scrollToItemAtIndexPath:_imageIndexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:NO];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return  [_photoArray count];
}


-(UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    BigCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"BigCell" forIndexPath:indexPath];
    
    cell.imageView.image = [_photoArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.view.frame.size.width, self.view.frame.size.height-160);
}


@end
