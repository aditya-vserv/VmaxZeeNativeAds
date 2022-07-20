//
//  NativeAdsVC.swift
//  VmaxZeeNativeAds_Example
//
//  Created by Admin_Vserv on 19/07/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import VmaxZeeNativeAds

class NativeAdVC: UIViewController {

    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        VmaxZeeNativeAds.shared.initialize()
        
    }
    
    // MARK: IBAction
    @IBAction func nativeImage_Clicked(_ sender: UIButton) {
        let vc: AdRenditionVC = self.storyboard?.instantiateViewController(withIdentifier: "AdRenditionVC") as! AdRenditionVC
        vc.adAspotKey = "fe5c2e3b" // "V578047e1"
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func nativeVideo_Clicked(_ sender: UIButton) {
        let vc: AdRenditionVC = self.storyboard?.instantiateViewController(withIdentifier: "AdRenditionVC") as! AdRenditionVC
        vc.adAspotKey = "895b1ead"
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func nativeImageVideo_Clicked(_ sender: UIButton) {
        let vc: AdRenditionVC = self.storyboard?.instantiateViewController(withIdentifier: "AdRenditionVC") as! AdRenditionVC
        vc.adAspotKey = "V20877777"
        self.present(vc, animated: true, completion: nil)
    }
    
}
