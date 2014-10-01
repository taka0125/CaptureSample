//
//  OffScreenView.swift
//
//  Created by Takahiro Oishi
//  Copyright (c) 2014年 Takahiro Ooishi. All rights reserved.
//

import UIKit

class OffScreenView: UIView {
  func export() -> UIImage {
    let size = self.frame.size
    UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
    let context = UIGraphicsGetCurrentContext()
    self.layer.renderInContext(context)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image;
  }
}
