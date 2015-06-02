//
//  MainCollectionViewController.m
//  PhotoGallery
//
//  Created by Андрей Щербинин on 02.06.15.
//  Copyright (c) 2015 Андрей Щербинин. All rights reserved.
//

#import "MainCollectionViewController.h"
#import "MainCollectionViewCell.h"
#import "BigCollectionViewController.h"

@interface MainCollectionViewController ()
{
    NSMutableArray *photoArray;
}
@end

@implementation MainCollectionViewController

@synthesize collectionView;

- (void)viewDidLoad {
    [super viewDidLoad];
    photoArray = [[NSMutableArray alloc]init];
    [collectionView registerNib:[UINib nibWithNibName:@"MainCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"MainCell"];
    [self LoadPhotos];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return  [photoArray count];
}


-(UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MainCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"MainCell" forIndexPath:indexPath];
    
    cell.imageView.image = [photoArray objectAtIndex:indexPath.row];
    
    return cell;
}

-(void)LoadPhotos
{
    for (int i=1; i<=11; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]];
        [photoArray addObject:image];
    }
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    BigCollectionViewController *bigVC = [[BigCollectionViewController alloc] initWithArray:photoArray andIndexPath:indexPath];
    [self.navigationController pushViewController:bigVC animated:YES];
}


@end
