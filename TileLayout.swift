//
//  TileLayout.swift
//  TileLayoutSwift
//
//  Created by Michael Reining on 1/31/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

protocol TileLayoutDelegate {
    func heightForItemAtIndexPath(tileLayout: TileLayout, indexPath: NSIndexPath) -> CGFloat
}

class TileLayout: UICollectionViewFlowLayout {
   
}
