//
//  ViewController.m
//  QuizApp
//
//  Created by 扇谷真依 on 2016/01/20.
//  Copyright © 2016年 扇谷真依. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int correct = 0;
int question = 0;

-(IBAction)CorrectAnswer:(id)sender{
    if(question == 0){
        self.textLabel.text = @"Right!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        correct = 1;
    }else if (question == 1){
        self.textLabel.text = @"Right!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        correct ++;
    }else if (question == 2){
        self.textLabel.text = @"No! Wrong!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
    }else if (question == 3){
        self.textLabel.text = @"Right!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        correct ++;
    }else if (question == 4){
        self.textLabel.text = @"No! Wrong!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
    };
}

-(IBAction)IncorrectAnswer:(id)sender{
    if(question == 0){
        self.textLabel.text = @"No! Wrong!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
    }else if (question == 1){
        self.textLabel.text = @"No! Wrong!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
    }else if (question == 2){
        self.textLabel.text = @"Right!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        correct ++;
    }else if (question == 3){
        self.textLabel.text = @"No! Wrong!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
    }else if (question == 4){
        self.textLabel.text = @"Right!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        correct ++;
    };
}

-(IBAction)NextQuestion:(id)sender{
    if(question == 0){
        self.textLabel.text = @"Takeshita street have to Harajuku.";
        self.circle.hidden = NO;
        self.cross.hidden = NO;
        self.next.hidden = YES;
        question ++;
    }else if (question == 1){
        self.textLabel.text = @"Tokyo Tower is the best new.";
        self.circle.hidden = NO;
        self.cross.hidden = NO;
        self.next.hidden = YES;
        question ++;
    }else if (question == 2){
        self.textLabel.text = @"There is Odaiba in Ferris wheel.";
        self.circle.hidden = NO;
        self.cross.hidden = NO;
        self.next.hidden = YES;
        question ++;
    }else if (question == 3){
        self.textLabel.text = @"Disneyland is in Setagaya.";
        self.circle.hidden = NO;
        self.cross.hidden = NO;
        self.next.hidden = YES;
        question ++;
    }else if (question == 4){
        //NSLog(@"%d", correct / 5 * 100);
        float floatNum = correct;
        int result = floor(floatNum / 5 * 100);
        self.textLabel.text = [NSString stringWithFormat:@"Finish!\n%d％",result];
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = YES;
    };
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.next.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
