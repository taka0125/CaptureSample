//
//  ViewController.swift
//  CaptureSample
//
//  Created by Takahiro Ooishi on 2014/10/01.
//  Copyright (c) 2014年 Takahiro Ooishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet private weak var imageView: UIImageView!
  
  @IBAction
  func export() {
    let nib = UINib(nibName: "OffScreenView", bundle: nil)
    let view = nib.instantiateWithOwner(nil, options: nil)[0] as OffScreenView
    let image = view.export()
    imageView.image = image
    NSLog("size = \(image.size)")
  }
}

