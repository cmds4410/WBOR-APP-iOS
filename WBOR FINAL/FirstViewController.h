//
//  FirstViewController.h
//  WBOR FINAL
//
//  Created by Connor Smith on 12/16/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StreamModel.h"
#import <MediaPlayer/MediaPlayer.h>
#import <CFNetwork/CFNetwork.h>

@interface FirstViewController : UIViewController{
    
    IBOutlet UIButton *play;
    IBOutlet UIButton *stop;
    StreamModel *streamer;
    NSString *m3uPath;
    NSURL *wbor;
    
}

@property (retain, nonatomic) StreamModel *streamer;
@property (retain) NSString *m3uPath;
@property (retain) NSURL *wbor;

- (IBAction)togglePlay:(UIButton *)sender;

@end
