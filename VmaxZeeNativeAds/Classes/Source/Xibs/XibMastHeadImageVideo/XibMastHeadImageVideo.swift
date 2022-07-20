//
//  XibMastHeadImageVideo.swift
//  MastHeadSampleSwift
//
//  Created by Cloy Monis on 03/11/20.
//

import UIKit
import VMaxAdsSDK

class XibMastHeadImageVideo: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var viewForVmaxTaggedContainer: MastHeadImageVideo!
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
        nativeBundle.loadNibNamed("XibMastHeadImageVideo", owner: self, options: nil)
        // Bundle.main.loadNibNamed("XibMastHeadImageVideo", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        NotificationCenter.default.post(name: Notification.Name("updateDeveloperViewHeightWidth"), object: viewForVmaxTaggedContainer)
        self.doTagging()
    }
    
    private func doTagging(){
        self.viewForVmaxTaggedContainer.iconImgView.tag = Int(VMaxAdTag.vmax_native_custom_image.rawValue)
        self.viewForVmaxTaggedContainer.mediaView.tag = Int(VMaxAdTag.vmax_native_media_layout.rawValue)
        self.viewForVmaxTaggedContainer.btnMuteUnmute.tag = Int(VMaxAdVideoTag.vmax_video_volume_icon.rawValue)
        self.viewForVmaxTaggedContainer.mediaView.previewImage = kVMaxKey_ImageMain
        self.viewForVmaxTaggedContainer.mediaView.loop = false
        self.viewForVmaxTaggedContainer.tag = Int(VMaxAdTag.vmax_native_container.rawValue)
        self.viewForVmaxTaggedContainer.iconImgView.isUserInteractionEnabled = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 300, height: 120)
    }
    
}
