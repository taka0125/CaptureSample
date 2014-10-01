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
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), {
      let image = view.export()
      NSLog("isMainThread = \(NSThread.currentThread().isMainThread)")
      
      dispatch_async(dispatch_get_main_queue(), {
        self.imageView.image = image
        NSLog("size = \(image.size)")
      })
    })
  }
}

