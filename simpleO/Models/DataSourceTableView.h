//
//  DataSourceTableView.h
//  simpleO
//
//  Created by Muhammad Fawwaz Mayda on 31/08/21.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface DataSourceTableView : NSObject<UITableViewDelegate, UITableViewDataSource> {
    NSArray *lettersArray;
}
@end
