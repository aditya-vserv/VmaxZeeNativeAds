
Pod::Spec.new do |s|
  s.name             = 'VmaxZeeNativeAds'
  s.version          = '0.1.0'
  s.summary          = 'VmaxZeeNativeAds helps publishers to draw native Ads experiences.'
  s.homepage         = 'https://github.com/aditya-vserv/VmaxZeeNativeAds'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aditya-vserv' => 'aditya.s@vserv.com' }
  s.source           = { :git => 'https://github.com/aditya-vserv/VmaxZeeNativeAds.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'VmaxZeeNativeAds/Classes/**/*.{swift,storyboard,xib}'
  s.resource_bundles = {
      'VmaxZeeNativeAds' => ['VmaxZeeNativeAds/Assets/*']
  }
  s.resources = 'VmaxZeeNativeAds/**/*.{png,json,xcassets,imageset,json}'
  s.dependency 'VMaxAdsSDK'
end
