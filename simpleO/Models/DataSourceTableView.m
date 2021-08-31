//
//  DataSourceTableView.m
//  simpleO
//
//  Created by Muhammad Fawwaz Mayda on 31/08/21.
//

#import "DataSourceTableView.h"

@interface DataSourceTableView()

@end

@implementation DataSourceTableView

-(id)init {
    lettersArray = [[NSArray alloc]initWithObjects:@"Country", @"Ball", nil];
    // NSLog(@"INIT Class");
    return self;
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = lettersArray[indexPath.row];
    // NSLog(@"Get Data for Cell");
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return lettersArray.count;
}

@end
