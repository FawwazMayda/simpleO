//
//  DataSourceCollectionView.h
//  simpleO
//
//  Created by Muhammad Fawwaz Mayda on 31/08/21.
//

#import <UIKit/UIkit.h>
#import <Foundation/Foundation.h>

@interface DataSourceCollectionView : NSObject<UICollectionViewDelegate, UICollectionViewDataSource>

@property(nonatomic,strong) NSArray* colorArray;

-(instancetype)init;
@end
