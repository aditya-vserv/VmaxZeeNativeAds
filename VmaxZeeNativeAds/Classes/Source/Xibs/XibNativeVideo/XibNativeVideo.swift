//
//  XibNativeVideo.swift
//  MastHeadSampleSwift
//
//  Created by Cloy Monis on 05/11/20.
//

import Foundation
import VMaxAdsSDK
import UIKit

class XibNativeVideo: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet var viewForVmaxTaggedContainer: NativeVideo!
    @IBOutlet var viewForVMaxTagged: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    
    private func commonInit() {
        let nativeBundle = Bundle(for: Self.self)
        nativeBundle.loadNibNamed("XibNativeVideo", owner: self, options: nil)
        // Bundle.main.loadNibNamed("XibNativeVideo", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        NotificationCenter.default.post(name: Notification.Name("updateDeveloperViewHeightWidth"), object: viewForVmaxTaggedContainer)
        self.doTagging()
    }
    
    private func doTagging(){
        self.viewForVmaxTaggedContainer.lblTitle.tag = Int(VMaxAdTag.vmax_native_title.rawValue)
        self.viewForVmaxTaggedContainer.lblDesc.tag = Int(VMaxAdTag.vmax_native_description.rawValue)
        self.viewForVmaxTaggedContainer.iconImgView.tag = Int(VMaxAdTag.vmax_native_image_icon.rawValue)
        self.viewForVmaxTaggedContainer.btnCTA.tag = Int(VMaxAdTag.vmax_native_cta_text.rawValue)
        self.viewForVmaxTaggedContainer.mediaView.tag = Int(VMaxAdTag.vmax_native_media_layout.rawValue)
        self.viewForVmaxTaggedContainer.btnCTA.isUserInteractionEnabled = true
        self.viewForVmaxTaggedContainer.btnMuteUnmute.tag = Int(VMaxAdVideoTag.vmax_video_volume_icon.rawValue)
        //self.viewForVmaxTaggedContainer.mediaView.isUserInteractionEnabled = false
        self.viewForVmaxTaggedContainer.tag = Int(VMaxAdTag.vmax_native_container.rawValue)
        self.viewForVmaxTaggedContainer.mediaView.isUserInteractionEnabled = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 290)
    }

}
