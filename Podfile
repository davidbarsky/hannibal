source 'https://github.com/CocoaPods/Specs'
platform :ios, '9.0'
use_frameworks!

pod 'Bolts'
pod 'FBSDKCoreKit', inhibit_warnings: true
pod 'FBSDKLoginKit', inhibit_warnings: true
pod 'RealmSwift'
pod 'ModelMapper'
pod 'Moya'
pod 'Moya/RxSwift'
pod 'RxSwift',    '~> 2.0'
pod 'RxCocoa',    '~> 2.0'
pod 'RxBlocking', '~> 2.0'

def test_pods
  pod 'RxTests', '~> 2.0'
end

target 'UnitTests' do
  test_pods
end

# Copy acknowledgements to the Settings.bundle
post_install do | installer |
  require 'fileutils'

  pods_acknowledgements_path = 'Pods/Target Support Files/Pods/Pods-Acknowledgements.plist'
  settings_bundle_path = Dir.glob("**/*Settings.bundle*").first

  if File.file?(pods_acknowledgements_path)
    puts 'Copying acknowledgements to Settings.bundle'
    FileUtils.cp_r(pods_acknowledgements_path, "#{settings_bundle_path}/Acknowledgements.plist", :remove_destination => true)
  end
end
