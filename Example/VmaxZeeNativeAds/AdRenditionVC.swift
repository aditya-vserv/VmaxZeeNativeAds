//
//  AdRenditionVC.swift
//  VmaxZeeNativeAds_Example
//
//  Created by Admin_Vserv on 19/07/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import VMaxAdsSDK

class AdRenditionVC: UIViewController {
    
    // MARK: Variable
    var adAspotKey = ""
    var adUXType: VMaxAdUX?
    var adView: VMaxAdView?
    
    // MARK: IBOutlet
    @IBOutlet var developerView: UIView!
    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cacheAd()
    }
    
    // MARK: ViewDidDisappear
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.adView?.invalidateAd()
        self.adView = nil
    }
    
    // MARK: Method
    func cacheAd(){
        self.adView = VMaxAdView(adspotID: self.adAspotKey, viewController: self, withAdUXType: self.adUXType ?? VMaxAdUX.billboard)
        self.adView?.delegate = self
        self.adView?.cacheAd()
    }
    
}

// MARK: VMaxAdDelegate
extension AdRenditionVC: VMaxAdDelegate {
    func onAdReady(_ adView: VMaxAdView!) {
        if let vMaxAdView = self.adView {
            vMaxAdView.frame = self.developerView.bounds
            print("VmaxAdView frame \(vMaxAdView.frame) developerView bounds \(developerView.bounds)")
            self.developerView.addSubview(vMaxAdView)
            self.developerView.bringSubview(toFront: vMaxAdView)
            // self.addSameConstraint(fromParentView: self.developerView, toChildView: vMaxAdView)
            vMaxAdView.showAd()
        }
    }
    func onAdError(_ adView: VMaxAdView!, error: Error!) {
        print("\(String(describing: self)) \(error.debugDescription) onAdError")
    }
    func onAdClose(_ adView: VMaxAdView!) {
        print("\(String(describing: self)) onAdClose")
    }
    func onAdMediaEnd(_ completed: Bool, reward: Int, _ adView: VMaxAdView!) {
        print("\(String(describing: self)) onAdMediaEnd")
    }
    func onAdClick(_ adView: VMaxAdView!) {
        print("\(String(describing: self)) onAdClick")
    }
    func addSameConstraint(fromParentView parentView: UIView, toChildView childView: UIView) {
        DispatchQueue.main.async(execute: {
            childView.translatesAutoresizingMaskIntoConstraints = false
            childView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 0).isActive = true
            childView.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: 0).isActive = true
            childView.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: 0).isActive = true
            childView.topAnchor.constraint(equalTo: parentView.topAnchor, constant: 0).isActive = true
            parentView.setNeedsUpdateConstraints()
            
            childView.translatesAutoresizingMaskIntoConstraints = false
            childView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 0).isActive = true
            childView.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: 0).isActive = true
            childView.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: 0).isActive = true
            childView.topAnchor.constraint(equalTo: parentView.topAnchor, constant: 0).isActive = true
            parentView.setNeedsUpdateConstraints()
        })
    }
}
