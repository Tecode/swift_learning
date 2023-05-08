//
//  HomeTableViewCell.h
//  app-oc
//
//  Created by 昊轩 on 2023/4/24.
//

#import <UIKit/UIKit.h>
@class ListItem;

NS_ASSUME_NONNULL_BEGIN
@protocol HomeTableCellDelegate <NSObject>


/// Delete方法 commond + option + /
/// @param tableViewCell view
/// @param deleteButton button
- (void)homeTableViewCell: (UITableViewCell *) tableViewCell clickDeleteButton:(UIButton *)deleteButton;

@end

@interface HomeTableViewCell : UITableViewCell

@property (atomic, weak,readwrite) id<HomeTableCellDelegate> delegate;

- (void) layoutTableViewCellWithItem:(ListItem *)listItem;
@end

NS_ASSUME_NONNULL_END
