//
//  VmaxZeeNativeAds.swift
//  VmaxZeeNativeAds
//
//  Created by Admin_Vserv on 19/07/22.
//

import Foundation
import VMaxAdsSDK

public class VmaxZeeNativeAds: NSObject {
    // ************************************************************/
    // MARK: - VmaxZeeNativeAds Singleton Class
    // ************************************************************/
    public static var shared: VmaxZeeNativeAds = {
        let instance = VmaxZeeNativeAds()
        return instance
    }()
    
    // ************************************************************/
    // MARK: - VmaxZeeNativeAds Public function
    // ************************************************************/
    public func initialize() {
        let factoryInstance = VmaxNativeAdLayoutFactory.getInstance() as! VmaxNativeAdLayoutFactory
        let bundlename = "VmaxZeeNativeAds"
        factoryInstance.addLayout("NativeVideoMasthead Mobile", withLayout: "\(bundlename).XibNativeVideo", andAdSpotSize: .DEFAULT)
        factoryInstance.addLayout("NativeImageMasthead Mobile", withLayout: "\(bundlename).XibNativeImage", andAdSpotSize: .DEFAULT)
        factoryInstance.addLayout("MastheadImgVideo Mobile", withLayout: "\(bundlename).XibMastHeadImageVideo", andAdSpotSize: .BILLBOARD)
    }
}
