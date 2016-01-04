//
//  Game.h
//  Snake Tutorial
//
//  Created by Matt Heaney on 05/06/2014.
//  Copyright (c) 2014 Matt Heaney. All rights reserved.
//

#import <UIKit/UIKit.h>

int SnakeX;
int SnakeY;
int FoodX;
int FoodY;
int ScoreNumber;

BOOL SnakeSideMovement;
BOOL SnakeBlock6InPlay;
BOOL SnakeBlock7InPlay;
BOOL SnakeBlock8InPlay;
BOOL SnakeBlock9InPlay;
BOOL SnakeBlock10InPlay;
BOOL SnakeBlock11InPlay;
BOOL SnakeBlock12InPlay;
BOOL SnakeBlock13InPlay;
BOOL SnakeBlock14InPlay;
BOOL SnakeBlock15InPlay;
BOOL SnakeBlock16InPlay;
BOOL SnakeBlock17InPlay;
BOOL SnakeBlock18InPlay;
BOOL SnakeBlock19InPlay;
BOOL SnakeBlock20InPlay;

NSInteger HighScoreNumber;

@interface Game : UIViewController
{
    
    IBOutlet UIImageView *SnakeBlock1;
    IBOutlet UIImageView *SnakeBlock2;
    IBOutlet UIImageView *SnakeBlock3;
    IBOutlet UIImageView *SnakeBlock4;
    IBOutlet UIImageView *SnakeBlock5;
    IBOutlet UIImageView *SnakeBlock6;
    IBOutlet UIImageView *SnakeBlock7;
    IBOutlet UIImageView *SnakeBlock8;
    IBOutlet UIImageView *SnakeBlock9;
    IBOutlet UIImageView *SnakeBlock10;
    IBOutlet UIImageView *SnakeBlock11;
    IBOutlet UIImageView *SnakeBlock12;
    IBOutlet UIImageView *SnakeBlock13;
    IBOutlet UIImageView *SnakeBlock14;
    IBOutlet UIImageView *SnakeBlock15;
    IBOutlet UIImageView *SnakeBlock16;
    IBOutlet UIImageView *SnakeBlock17;
    IBOutlet UIImageView *SnakeBlock18;
    IBOutlet UIImageView *SnakeBlock19;
    IBOutlet UIImageView *SnakeBlock20;
    IBOutlet UIButton *StartGame;
    IBOutlet UIImageView *Food;
    IBOutlet UILabel *ScoreLabel;
    IBOutlet UIButton *Exit;
    IBOutlet UILabel *HighScore;
    
    NSTimer *SnakeMovement;
    
}

-(void)PlaceFood;
-(void)SnakeMoving;
-(IBAction)Start:(id)sender;
-(void)Score;
-(void)GameOver;

@end
