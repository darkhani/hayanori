//
//  UIViewExt.swift
//  ShowU
//
//  Created by INTAEK HAN on 2016. 12. 6..
//  Copyright © 2016년 TEGINE. All rights reserved.
//

import UIKit

extension UIView {
    func pushTransition(duration:CFTimeInterval) {
        let animation:CATransition = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
            kCAMediaTimingFunctionEaseInEaseOut)
        animation.type = kCATransitionPush
        animation.subtype = kCATransitionFromRight
        animation.duration = duration
        self.layer.add(animation, forKey: kCATransitionPush)
    }
    
    func pushTransitionReverse(duration:CFTimeInterval) {
        let animation:CATransition = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
            kCAMediaTimingFunctionEaseInEaseOut)
        animation.type = kCATransitionPush
        animation.subtype = kCATransitionFromLeft
        animation.duration = duration
        self.layer.add(animation, forKey: kCATransitionPush)
    }
}
