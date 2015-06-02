//
//  BigCollectionViewCell.m
//  PhotoGallery
//
//  Created by Андрей Щербинин on 02.06.15.
//  Copyright (c) 2015 Андрей Щербинин. All rights reserved.
//

#import "BigCollectionViewCell.h"

@implementation BigCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}



-(UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView 
{
    return self.imageView;
}

@end
