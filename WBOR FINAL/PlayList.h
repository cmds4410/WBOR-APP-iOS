//
//  PlayList.h
//  WBOR FINAL
//
//  Created by Connor Smith on 12/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayList : NSObject{
    
    NSURL *WBOR;
    NSString *curSong;
    NSString *curArtist;
    
}

@property (nonatomic, retain) NSString *curSong;
@property (nonatomic, retain) NSString *curArtist;


- (void)getCurrent;
- (void)handleData:(NSData *)responseData;

@end
