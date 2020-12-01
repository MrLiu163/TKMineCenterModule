#
# Be sure to run `pod lib lint TKMineCenterModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TKMineCenterModule'
  s.version          = '0.1.5'
  s.summary          = 'TKMineCenterModule is a module for mine center'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "TKMineCenterModule is a module of mine center, contains view model adn controllers."

  s.homepage         = 'https://github.com/MrLiu163/TKMineCenterModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MrLiu163' => 'lnfsky@163.com' }
  s.source           = { :git => 'https://github.com/MrLiu163/TKMineCenterModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TKMineCenterModule/TKMineCenterModule.h'
  #s.source_files = 'TKMineCenterModule/Classes/**/*'
  
  s.subspec 'Model' do |ss|
      #ss.source_files = 'TKMineCenterModule/TKMonitor.{h,m}', 'TKMineCenterModule/TKColorHelper.{h,m}'
      ss.source_files = 'TKMineCenterModule/Classes/Model/**/*'
  end
  
  s.subspec 'Controller' do |ss|
      #ss.source_files = 'TKMineCenterModule/TKMineCenterViewController.{h,m}'
      ss.source_files = 'TKMineCenterModule/Classes/Controller/**/*'
      #Controller中依赖了Controller之外的模块View
      ss.dependency 'TKMineCenterModule/View'
  end
  
  s.subspec 'View' do |ss|
      #ss.source_files = 'TKMineCenterModule/TKMineCenterLineView.{h,m}'
      ss.source_files = 'TKMineCenterModule/Classes/View/**/*'
  end

  s.subspec 'Category' do |ss|
      #ss.source_files = 'TKMineCenterModule/NSBundle+TKMineCenter.{h,m}'
      ss.source_files = 'TKMineCenterModule/Classes/Category/**/*'
      #Category中依赖了Category之外的模块Controller
      ss.dependency 'TKMineCenterModule/Controller'
  end
  
  s.resource_bundles = {
    'TKMineCenterModule' => ['TKMineCenterModule/Assets/*.xcassets']
  }
  
  #s.resource_bundles = 'TKMineCenterModule/TKMineCenterModule.bundle'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
