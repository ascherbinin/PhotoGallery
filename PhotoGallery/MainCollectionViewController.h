//
//  MainCollectionViewController.h
//  PhotoGallery
//
//  Created by Андрей Щербинин on 02.06.15.
//  Copyright (c) 2015 Андрей Щербинин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainCollectionViewController : UIViewController <UICollectionViewDataSource,UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end
