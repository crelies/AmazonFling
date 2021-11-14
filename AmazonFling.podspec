#
# Be sure to run `pod lib lint AmazonFling.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name                    = 'AmazonFling'
    s.version                 = '1.4.0'
    s.summary                 = 'Easily integrate the Amazon Fling SDK to discover and control your FireTV in your app.'
    
    s.description             = <<-DESC
        Discovering and controlling your FireTV requires the Amazon Fling SDK.
        The SDK is not open source. That's why you won't find a pod for it.
        I wanted to integrate the Amazon Fling SDK using Cocoapods in one of my projects.
        So I created this pod which does the magic ;)
    DESC
    
    s.homepage                = 'https://github.com/crelies/AmazonFling'
    s.license                 = { :type => 'MIT', :file => 'LICENSE' }
    s.author                  = { 'Christian Elies' => 'chris.elies13@gmail.com' }
    s.source                  = { :git => 'https://github.com/crelies/AmazonFling.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '9.0'
    
    s.ios.frameworks          = 'CFNetwork', 'Security', 'SystemConfiguration', 'WebKit'
    s.ios.vendored_frameworks = 'Frameworks/AmazonFling.framework', 'Frameworks/Bolts.framework'
    
    s.user_target_xcconfig    = { 'OTHER_LDFLAGS' => '$(inherited) -lc++' }
end
