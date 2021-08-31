//
//  ViewController.h
//  simpleO
//
//  Created by Muhammad Fawwaz Mayda on 31/08/21.
//

#import <UIKit/UIKit.h>
#import "DataSourceTableView.h"

@interface ViewController : UIViewController

@property (nonatomic,strong) UIView *simpleView;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UICollectionView *collectionView;
@property (nonatomic,strong) DataSourceTableView *dataSource;

@end

