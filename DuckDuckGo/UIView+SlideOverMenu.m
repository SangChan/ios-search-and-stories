//
//  UIView+SlideOverMenu.m
//  DuckDuckGo
//
//  Created by Mic Pringle on 27/03/2014.
//
//

#import "UIView+SlideOverMenu.h"

@implementation UIView (SlideOverMenu)

- (UIImage *)snapshotImageAfterScreenUpdates:(BOOL)afterUpdates adjustBoundsForStatusBar:(BOOL)adjustBounds
{
    CGRect bounds = self.bounds;
    if (adjustBounds) {
        bounds.size.height += 20.0f;
    }
    UIGraphicsBeginImageContext(bounds.size);
    [self drawViewHierarchyInRect:bounds afterScreenUpdates:afterUpdates];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSData *data = UIImageJPEGRepresentation(image, 0.75f);
    image = [UIImage imageWithData:data];
    return image;
}


@end
