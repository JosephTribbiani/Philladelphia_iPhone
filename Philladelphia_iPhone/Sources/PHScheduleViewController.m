//
//  PHScheduleViewController.m
//  Philladelphia_iPhone
//
//  Created by Igor Bogatchuk on 3/26/14.
//  Copyright (c) 2014 Igor Bogatchuk. All rights reserved.
//

#import "PHScheduleViewController.h"
#import "PHAppDelegate.h"
#import "PHLine.h"
#import "PHTripsCollectionViewCell.h"
#import "PHHoursCollectionViewCell.h"
#import "PHWeekDaysCollectionViewCell.h"

@interface PHScheduleViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *tripCollectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *hoursCollectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *weekdaysCollectionView;

@end

@implementation PHScheduleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *tripsViewlayout = (UICollectionViewFlowLayout*)self.tripCollectionView.collectionViewLayout;
    tripsViewlayout.sectionInset = UIEdgeInsetsMake(0, 10, 0, 10);
    
    UICollectionViewFlowLayout *hoursViewlayout = (UICollectionViewFlowLayout*)self.hoursCollectionView.collectionViewLayout;
    hoursViewlayout.sectionInset = UIEdgeInsetsMake(0, 10, 0, 10);
    
    UICollectionViewFlowLayout *weekdaysViewlayout = (UICollectionViewFlowLayout*)self.weekdaysCollectionView.collectionViewLayout;
    weekdaysViewlayout.sectionInset = UIEdgeInsetsMake(0, 10, 0, 10);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell* cell = nil;
    if (collectionView == self.tripCollectionView)
    {
        cell = [self.tripCollectionView dequeueReusableCellWithReuseIdentifier:@"tripsCollectionViewCell" forIndexPath:indexPath];
        ((PHTripsCollectionViewCell*)cell).startTimeLabel.text = @"start";
        ((PHTripsCollectionViewCell*)cell).endTimeLabel.text = @"end";
        ((PHTripsCollectionViewCell*)cell).durationLabel.text = @"duration";
    }
    else if (collectionView == self.hoursCollectionView)
    {
        cell = [self.hoursCollectionView dequeueReusableCellWithReuseIdentifier:@"hoursCollectionViewCell" forIndexPath:indexPath];
    }
    else
    {
        cell = [self.weekdaysCollectionView dequeueReusableCellWithReuseIdentifier:@"weekdaysCollectionViewCell" forIndexPath:indexPath];
    }
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

@end
