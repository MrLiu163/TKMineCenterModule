#
# Be sure to run `pod lib lint TKMineCenterModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TKMineCenterModule'
  s.version          = '0.1.0'
  s.summary          = 'TKMineCenterModule is a module for mine center'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TKMineCenterModule is a codeModule of mine center, contain view model controllers.
                       DESC

  s.homepage         = 'https://github.com/MrLiu163/TKMineCenterModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MrLiu163' => 'lnfsky@163.com' }
  s.source           = { :git => 'https://github.com/MrLiu163/TKMineCenterModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TKMineCenterModule/Classes/**/*'
  
  s.subspec 'Model' do |ss|
      ss.source_files = 'TKMineCenterModule/Classes/Model/**/*'
  end
  
  s.subspec 'Controller' do |ss|
      ss.source_files = 'TKMineCenterModule/Classes/Controller/**/*'
  end
  
  s.subspec 'View' do |ss|
      ss.source_files = 'TKMineCenterModule/Classes/View/**/*'
  end
    
  s.resource_bundles = {
    'TKMineCenterModule' => ['TKMineCenterModule/Assets/*.xcassets']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
