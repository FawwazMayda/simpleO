//
//  DataSourceCollectionView.m
//  simpleO
//
//  Created by Muhammad Fawwaz Mayda on 31/08/21.
//

#import <Foundation/Foundation.h>
#import "DataSourceCollectionView.h"

@interface DataSourceCollectionView()

@end

@implementation DataSourceCollectionView

- (instancetype)init
{
    self = [super init];
    if (self) {
        _colorArray = [[NSArray alloc] initWithObjects:[UIColor redColor], [UIColor purpleColor],nil];
    }
    return self;
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor greenColor];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 50;
}

@end
