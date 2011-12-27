//
//  SecondViewController.h
//  WBOR FINAL
//
//  Created by Connor Smith on 12/16/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayList.h"

@interface SecondViewController : UIViewController{
    
    IBOutlet UILabel *current;
    IBOutlet UILabel *currentArtist;
    IBOutlet UILabel *by;
    IBOutlet UIButton *getCurrent;
    
}

- (IBAction)setLabel;

@end
