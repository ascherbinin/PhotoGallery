//
//  BigCollectionViewController.h
//  PhotoGallery
//
//  Created by Андрей Щербинин on 02.06.15.
//  Copyright (c) 2015 Андрей Щербинин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BigCollectionViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

-(id)initWithArray:(NSArray*)photoArray;
-(id)initWithArray:(NSArray*)photoArray andIndexPath:(NSIndexPath*)imageIndexPath;

@end
