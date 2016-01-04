//
//  Game.m
//  Snake Tutorial
//
//  Created by Matt Heaney on 05/06/2014.
//  Copyright (c) 2014 Matt Heaney. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(void)GameOver{
    
    [SnakeMovement invalidate];
    SnakeBlock1.hidden = YES;
    SnakeBlock2.hidden = YES;
    SnakeBlock3.hidden = YES;
    SnakeBlock4.hidden = YES;
    SnakeBlock5.hidden = YES;
    SnakeBlock6.hidden = YES;
    SnakeBlock7.hidden = YES;
    SnakeBlock8.hidden = YES;
    SnakeBlock9.hidden = YES;
    SnakeBlock10.hidden = YES;
    SnakeBlock11.hidden = YES;
    SnakeBlock12.hidden = YES;
    SnakeBlock13.hidden = YES;
    SnakeBlock14.hidden = YES;
    SnakeBlock15.hidden = YES;
    SnakeBlock16.hidden = YES;
    SnakeBlock17.hidden = YES;
    SnakeBlock18.hidden = YES;
    SnakeBlock19.hidden = YES;
    SnakeBlock20.hidden = YES;
    
    Exit.hidden = NO;
    
    if (ScoreNumber > HighScoreNumber) {
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"HighScoreSaved"];
        HighScore.text = [NSString stringWithFormat:@"High Score: %i", ScoreNumber];
    }
    
}

-(void)Score{
    
    ScoreNumber = ScoreNumber + 1;
    ScoreLabel.text = [NSString stringWithFormat:@"Score: %i", ScoreNumber];
 
    switch (ScoreNumber) {
        case 1:
            SnakeBlock6.hidden = NO;
            SnakeBlock6InPlay = YES;
            break;
        case 2:
            SnakeBlock7.hidden = NO;
            SnakeBlock7InPlay = YES;
            break;
        case 3:
            SnakeBlock8.hidden = NO;
            SnakeBlock8InPlay = YES;
            break;
        case 4:
            SnakeBlock9.hidden = NO;
            SnakeBlock9InPlay = YES;
            break;
        case 5:
            SnakeBlock10.hidden = NO;
            SnakeBlock10InPlay = YES;
            break;
        case 6:
            SnakeBlock11.hidden = NO;
            SnakeBlock11InPlay = YES;
            break;
        case 7:
            SnakeBlock12.hidden = NO;
            SnakeBlock12InPlay = YES;
            break;
        case 8:
            SnakeBlock13.hidden = NO;
            SnakeBlock13InPlay = YES;
            break;
        case 9:
            SnakeBlock14.hidden = NO;
            SnakeBlock14InPlay = YES;
            break;
        case 10:
            SnakeBlock15.hidden = NO;
            SnakeBlock15InPlay = YES;
            break;
        case 11:
            SnakeBlock16.hidden = NO;
            SnakeBlock16InPlay = YES;
            break;
        case 12:
            SnakeBlock17.hidden = NO;
            SnakeBlock17InPlay = YES;
            break;
        case 13:
            SnakeBlock18.hidden = NO;
            SnakeBlock18InPlay = YES;
            break;
        case 14:
            SnakeBlock19.hidden = NO;
            SnakeBlock19InPlay = YES;
            break;
        case 15:
            SnakeBlock20.hidden = NO;
            SnakeBlock20InPlay = YES;
            break;
            
        default:
            break;
    }
    
}

-(void)PlaceFood{
    
    FoodX = arc4random() %492;
    FoodX = FoodX + 34;
    FoodY = arc4random() %249;
    FoodY = FoodY + 39;
    
    Food.center = CGPointMake(FoodX, FoodY);
    
}

-(void)MoveLeft{
    
    if(SnakeSideMovement == NO){
        SnakeX = -30;
        SnakeY = 0;
        SnakeSideMovement = YES;
    }

}

-(void)MoveRight{
    
    if (SnakeSideMovement == NO) {
        SnakeX = 30;
        SnakeY = 0;
        SnakeSideMovement = YES;
    }
    
}

-(void)MoveUp{
    
    if (SnakeSideMovement == YES) {
        SnakeX = 0;
        SnakeY = -30;
        SnakeSideMovement = NO;
    }
    
}

-(void)MoveDown{
    
    if (SnakeSideMovement == YES) {
        SnakeX = 0;
        SnakeY = 30;
        SnakeSideMovement = NO;
    }
    
    
}


-(void)SnakeMoving{
    
    SnakeBlock20.center = CGPointMake(SnakeBlock19.center.x, SnakeBlock19.center.y);
    SnakeBlock19.center = CGPointMake(SnakeBlock18.center.x, SnakeBlock18.center.y);
    SnakeBlock18.center = CGPointMake(SnakeBlock17.center.x, SnakeBlock17.center.y);
    SnakeBlock17.center = CGPointMake(SnakeBlock16.center.x, SnakeBlock16.center.y);
    SnakeBlock16.center = CGPointMake(SnakeBlock15.center.x, SnakeBlock15.center.y);
    SnakeBlock15.center = CGPointMake(SnakeBlock14.center.x, SnakeBlock14.center.y);
    SnakeBlock14.center = CGPointMake(SnakeBlock13.center.x, SnakeBlock13.center.y);
    SnakeBlock13.center = CGPointMake(SnakeBlock12.center.x, SnakeBlock12.center.y);
    SnakeBlock12.center = CGPointMake(SnakeBlock11.center.x, SnakeBlock11.center.y);
    SnakeBlock11.center = CGPointMake(SnakeBlock10.center.x, SnakeBlock10.center.y);
    SnakeBlock10.center = CGPointMake(SnakeBlock9.center.x, SnakeBlock9.center.y);
    SnakeBlock9.center = CGPointMake(SnakeBlock8.center.x, SnakeBlock8.center.y);
    SnakeBlock8.center = CGPointMake(SnakeBlock7.center.x, SnakeBlock7.center.y);
    SnakeBlock7.center = CGPointMake(SnakeBlock6.center.x, SnakeBlock6.center.y);
    SnakeBlock6.center = CGPointMake(SnakeBlock5.center.x, SnakeBlock5.center.y);
    SnakeBlock5.center = CGPointMake(SnakeBlock4.center.x, SnakeBlock4.center.y);
    SnakeBlock4.center = CGPointMake(SnakeBlock3.center.x, SnakeBlock3.center.y);
    SnakeBlock3.center = CGPointMake(SnakeBlock2.center.x, SnakeBlock2.center.y);
    SnakeBlock2.center = CGPointMake(SnakeBlock1.center.x, SnakeBlock1.center.y);
    SnakeBlock1.center = CGPointMake(SnakeBlock1.center.x + SnakeX, SnakeBlock1.center.y + SnakeY);
    
    if(CGRectIntersectsRect(SnakeBlock1.frame, Food.frame)){
        [self PlaceFood];
        [self Score];
    }
    
    if (CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock3.frame)) {
        [self GameOver];
    }
    if (CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock4.frame)) {
        [self GameOver];
    }
    if (CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock5.frame)) {
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock6.frame)) && (SnakeBlock6InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock7.frame)) && (SnakeBlock7InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock8.frame)) && (SnakeBlock8InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock9.frame)) && (SnakeBlock9InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock10.frame)) && (SnakeBlock10InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock11.frame)) && (SnakeBlock11InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock12.frame)) && (SnakeBlock12InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock13.frame)) && (SnakeBlock13InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock14.frame)) && (SnakeBlock14InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock15.frame)) && (SnakeBlock15InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock16.frame)) && (SnakeBlock16InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock17.frame)) && (SnakeBlock17InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock18.frame)) && (SnakeBlock18InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock19.frame)) && (SnakeBlock19InPlay == YES)){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock20.frame)) && (SnakeBlock20InPlay == YES)){
        [self GameOver];
    }
    
    if (SnakeBlock1.center.x < 29) {
        [SnakeMovement invalidate];
        [self performSelector:@selector(GameOver) withObject:self afterDelay:0.5];
    }
    
    if (SnakeBlock1.center.x > 539) {
        [SnakeMovement invalidate];
        [self performSelector:@selector(GameOver) withObject:self afterDelay:0.5];
    }
    
    if (SnakeBlock1.center.y < 28) {
        [SnakeMovement invalidate];
        [self performSelector:@selector(GameOver) withObject:self afterDelay:0.5];
    }
    
    if (SnakeBlock1.center.y > 291) {
        [SnakeMovement invalidate];
        [self performSelector:@selector(GameOver) withObject:self afterDelay:0.5];
    }
    
}

-(IBAction)Start:(id)sender{
    
    StartGame.hidden = YES;
    
    SnakeMovement = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(SnakeMoving) userInfo:nil repeats:YES];
    
    [self PlaceFood];
    
    Food.hidden = NO;
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    HighScoreNumber = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    HighScore.text = [NSString stringWithFormat:@"High Score: %li", (long)HighScoreNumber];
    
    
    Exit.hidden = YES;
    
    SnakeBlock6.hidden = YES;
    SnakeBlock7.hidden = YES;
    SnakeBlock8.hidden = YES;
    SnakeBlock9.hidden = YES;
    SnakeBlock10.hidden = YES;
    SnakeBlock11.hidden = YES;
    SnakeBlock12.hidden = YES;
    SnakeBlock13.hidden = YES;
    SnakeBlock14.hidden = YES;
    SnakeBlock15.hidden = YES;
    SnakeBlock16.hidden = YES;
    SnakeBlock17.hidden = YES;
    SnakeBlock18.hidden = YES;
    SnakeBlock19.hidden = YES;
    SnakeBlock20.hidden = YES;

    SnakeBlock6InPlay = NO;
    SnakeBlock7InPlay = NO;
    SnakeBlock8InPlay = NO;
    SnakeBlock9InPlay = NO;
    SnakeBlock10InPlay = NO;
    SnakeBlock11InPlay = NO;
    SnakeBlock12InPlay = NO;
    SnakeBlock13InPlay = NO;
    SnakeBlock14InPlay = NO;
    SnakeBlock15InPlay = NO;
    SnakeBlock16InPlay = NO;
    SnakeBlock17InPlay = NO;
    SnakeBlock18InPlay = NO;
    SnakeBlock19InPlay = NO;
    SnakeBlock20InPlay = NO;

    ScoreNumber = 0;
    ScoreLabel.text = [NSString stringWithFormat:@"Score: 0"];
    
    Food.hidden = YES;
    
    SnakeX = 30;
    SnakeY = 0;
    
    SnakeSideMovement = YES;
    
    UISwipeGestureRecognizer *SwipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(MoveLeft)];
    [SwipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [self.view addGestureRecognizer:SwipeLeft];
    
    UISwipeGestureRecognizer *SwipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(MoveRight)];
    [SwipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:SwipeRight];
    
    UISwipeGestureRecognizer *SwipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(MoveUp)];
    [SwipeUp setDirection:UISwipeGestureRecognizerDirectionUp];
    [self.view addGestureRecognizer:SwipeUp];
    
    UISwipeGestureRecognizer *SwipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(MoveDown)];
    [SwipeDown setDirection:UISwipeGestureRecognizerDirectionDown];
    [self.view addGestureRecognizer:SwipeDown];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
