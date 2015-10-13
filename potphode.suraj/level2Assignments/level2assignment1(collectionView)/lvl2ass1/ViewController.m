//
//  ViewController.m
//  lvl2ass1
//
//  Created by Mindstix Software on 24/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;
@property NSArray *imagesArray;
@property NSArray *labelsArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self myCollectionView] setDataSource:self];
    [[self myCollectionView] setDelegate:self];
    _imagesArray = [[NSArray alloc]initWithObjects:@"backpack-1.png",@"backpack-2.png",@"backpack-3.png",@"backpack-4.png",@"backpack-5.png",@"backpack-6.png",@"backpack-7.png",@"backpack-8.png",@"backpack-9.png", nil];
    _labelsArray = [[NSArray alloc]initWithObjects:@"backpack-1",@"backpack-2",@"backpack-3",@"backpack-4",@"backpack-5",@"backpack-6",@"backpack-7",@"backpack-8",@"backpack-9", nil];
    // Do any additional setup after loading the view.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [_labelsArray count];
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellId =@"CellId";
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellId forIndexPath:indexPath];
    [[cell img]setImage:[UIImage imageNamed:[_imagesArray objectAtIndex:indexPath.item]]];
    [[cell imgLabel]setText:[_labelsArray objectAtIndex:indexPath.item]];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
