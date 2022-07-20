//
//  MastHeadImageVideo.swift
//  MastHeadSampleSwift
//
//  Created by Cloy Monis on 03/11/20.
//

import Foundation
import VMaxAdsSDK
import UIKit

class MastHeadImageVideo: VMaxAdView,VMaxMediaViewDelegate {

    @IBOutlet weak var iconImgView: UIImageView!
    @IBOutlet weak var mediaView: VMaxMediaView!
    @IBOutlet weak var btnMuteUnmute: UIButton!
    
     
    func mediaViewDidLoad(_ mediaView: VMaxMediaView!) {
        print("\(NSStringFromClass(self.classForCoder)) mediaViewDidLoad")
    }
    
    func mediaViewFailed(toLoad mediaView: VMaxMediaView!, error: Error!) {
        print("\(NSStringFromClass(self.classForCoder)) mediaViewFailed")
    }
    
    func mediaViewDidClick(_ mediaView: VMaxMediaView!) {
        print("\(NSStringFromClass(self.classForCoder)) mediaViewDidClick")
    }
    
    func mediaViewDidExpand(_ mediaView: VMaxMediaView!) {
        print("\(NSStringFromClass(self.classForCoder)) mediaViewDidExpand")
    }
    
    func mediaViewDidCollapse(_ mediaView: VMaxMediaView!) {
        print("\(NSStringFromClass(self.classForCoder)) mediaViewDidCollapse")
    }
}

