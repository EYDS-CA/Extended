//
//  UIScrollView.swift
//  Extended
//
//  Created by Skyler Smith on 2018-11-09.
//

import UIKit

extension UIScrollView {
    var isScrolledToBottom: Bool {
        return isScrolledWithin(distanceFromBottom: 0)
    }
    
    var isScrolledToTop: Bool {
        return contentOffset.y <= 0
    }
    
    var isScrolledToLeftSide: Bool {
        return contentOffset.x <= 0
    }
    
    var isScrolledToRightSide: Bool {
        return isScrolledWithin(distanceFromRight: 0)
    }
    
    var maxVerticalScrollOffset: CGFloat {
        return max(contentSize.height - frame.size.height, 0)
    }
    
    var maxHorizontalScrollOffset: CGFloat {
        return max(contentSize.width - frame.size.width, 0)
    }
    
    func isScrolledWithin(distanceFromBottom distance: CGFloat) -> Bool {
        return contentOffset.y >= maxVerticalScrollOffset - distance
    }
    
    func isScrolledWithin(distanceFromRight distance: CGFloat) -> Bool {
        return contentOffset.x >= maxHorizontalScrollOffset - distance
    }
}
