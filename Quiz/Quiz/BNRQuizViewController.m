//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Cavit Can Başar on 15.11.2016.
//  Copyright © 2016 Cavit Can Başar. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answareLabel;

@end

@implementation BNRQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    //Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        //Create two arrays filled with questions and answres
        //and make the pointers point to them
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    
        //Return the address of the new object
        
        return self;
}


- (IBAction)showQuestion:(id)sender
{
    //Step to the next question
    self.currentQuestionIndex++;
    
    //AM I past the last question?
    if(self.currentQuestionIndex == [self.questions count])
    {
        //Go back to the first question
        self.currentQuestionIndex = 0;
    }
    
    //Get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the string in the question label
    self.questionLabel.text = question;
    
    //Reset the answer label
    self.answareLabel.text = @"???";
    
    
}

- (IBAction)showAnswer:(id)sender
{
    // What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //Display in the the answer label
    self.answareLabel.text = answer;

}

@end






/*- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
