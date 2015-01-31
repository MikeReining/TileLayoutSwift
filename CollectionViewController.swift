//
//  CollectionViewController.swift
//  TileLayoutSwift
//
//  Created by Michael Reining on 1/31/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

let reuseIdentifier = "TileCell"

class CollectionViewController: UICollectionViewController, TileLayoutDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "TileCell")

        // Do any additional setup after loading the view.
    }

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return 18
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("TileCell", forIndexPath: indexPath) as UICollectionViewCell
        
        // Configure the cell
        
        return cell
    }

    // MARK: Tile Layout Delegate

    func heightForItemAtIndexPath(tileLayout: TileLayout, indexPath: NSIndexPath) -> CGFloat {
        var randomCGFloat: CGFloat = CGFloat(80 + (arc4random() % 50))
        return randomCGFloat
    }

}
