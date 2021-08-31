//
//  ViewController.m
//  simpleO
//
//  Created by Muhammad Fawwaz Mayda on 31/08/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _simpleView = [[UIView alloc] initWithFrame:CGRectMake(40, 40, 20, 20)];
    _simpleView.backgroundColor = [UIColor purpleColor];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectZero];
    [_tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"cell"];
    _dataSourceTable = [[DataSourceTableView alloc] init];
    _tableView.delegate = _dataSourceTable;
    _tableView.dataSource = _dataSourceTable;
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    [_collectionView registerClass:UICollectionViewCell.class forCellWithReuseIdentifier:@"cell"];
    _dataSourceCollection = [[DataSourceCollectionView alloc]init];
    _collectionView.delegate = _dataSourceCollection;
    _collectionView.dataSource = _dataSourceCollection;
    
    [self.view addSubview:_simpleView];
    [self.view addSubview:_tableView];
    [self.view addSubview:_collectionView];
    [self setConstraint];
}

-(void)setConstraint {
    
    // simpleView
    _simpleView.translatesAutoresizingMaskIntoConstraints = NO;
    [_simpleView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [_simpleView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [_simpleView.heightAnchor constraintEqualToConstant:120.0].active = YES;
    [_simpleView.widthAnchor constraintEqualToConstant:120.0].active = YES;
    
    //tableView
    _tableView.translatesAutoresizingMaskIntoConstraints = NO;
    [_tableView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [_tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20].active = YES;
    [_tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20.0].active = YES;
    [_tableView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:-30].active = YES;
    [_tableView.heightAnchor constraintEqualToConstant:200].active = YES;
    
    //collectionView
    _collectionView.translatesAutoresizingMaskIntoConstraints = NO;
    [_collectionView.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor constant:20.0].active = YES;
    [_collectionView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20.0].active = YES;
    [_collectionView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20.0].active = YES;
    [_collectionView.bottomAnchor constraintEqualToAnchor:_simpleView.topAnchor constant:-20.0].active = YES;
}


@end
