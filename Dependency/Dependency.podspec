#
#  Be sure to run `pod spec lint Dependency.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name          = 'DependencyPod'
  s.version       = '0.1.0'
  s.summary       = 'Dependency'

  s.homepage      = 'https://github.com/ThanathipNut/ModularProjectWorkspace'
  s.license       = 'MIT'
  s.author        = { 'Thanathip Suppapantita' => 'thanathip.nut@gmail.com' }
  
  s.source        = { :git => 'file:///Dependency', :tag => s.version.to_s}
  s.source_files  = 'Dependency/**/*.{swift}'
  s.resources     = 'Dependency/**/*.{xcassets,storyboard,xib,xcdatamodeld,lproj}'

  s.static_framework = true
  s.dependency    'SwiftyBeaver'

end
