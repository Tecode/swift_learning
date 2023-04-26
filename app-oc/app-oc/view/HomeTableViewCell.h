//
//  HomeTableViewCell.h
//  app-oc
//
//  Created by 昊轩 on 2023/4/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol HomeTableCellDelegate <NSObject>


/// Delete方法 commond + option + /
/// @param tableViewCell view
/// @param deleteButton button
- (void)homeTableViewCell: (UITableViewCell *) tableViewCell clickDeleteButton:(UIButton *)deleteButton;

@end

@interface HomeTableViewCell : UITableViewCell

@property (atomic, weak,readwrite) id<HomeTableCellDelegate> delegate;

- (void) layoutTableViewCell;
@end

NS_ASSUME_NONNULL_END
