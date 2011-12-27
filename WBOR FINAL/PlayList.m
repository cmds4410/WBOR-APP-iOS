//
//  PlayList.m
//  WBOR FINAL
//
//  Created by Connor Smith on 12/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "PlayList.h"

@implementation PlayList

@synthesize curSong, curArtist;

- (void)getCurrent{
    WBOR = [NSURL URLWithString:@"http://wbor-hr.appspot.com/updateinfo"];
    NSString* tmp;
    
    NSData* data = [NSData dataWithContentsOfURL: 
                        WBOR];

    
    [self handleData:data];
    NSLog(@"tmp: %@",tmp);
    
}

- (void)handleData:(NSData *)responseData {
    //parse out the json data into a dictionary because it pretty much already is a dictionary
    NSError* error;
    NSDictionary* json = [NSJSONSerialization 
                          JSONObjectWithData:responseData 
                          
                          options:kNilOptions 
                          error:&error];
    
    NSString *currentSongArtist = [json objectForKey:@"song_string"]; //2
    
    NSLog(@"Current Song: %@", currentSongArtist);
    NSScanner *scanner = [NSScanner scannerWithString:currentSongArtist];
    NSString *song, *artist;
    
    //Get the song with the scanner object
    //I could scan only up to the &, but there might be an & in the song title
    [scanner scanUpToString:@"&mdash" intoString:&song];
    NSLog(@"scan: %@",song);
    
    self.curSong = song;
    
    //Get the artist
    artist = [currentSongArtist stringByReplacingOccurrencesOfString:song withString:@""];
    artist = [artist stringByReplacingOccurrencesOfString:@"&mdash; " withString:@""];
    
    self.curArtist = artist;
    
}

@end
