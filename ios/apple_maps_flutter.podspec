#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'apple_maps_flutter'
  s.version          = '0.0.1'
  s.summary          = 'Apple Maps widget for Flutter.'
  s.description      = <<-DESC
This plugin uses the Flutter platform view to display an Apple Maps widget.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :type => 'BSD-2-Clause', :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :http => 'https://github.com/LuisThein/apple_maps_flutter' }
  s.source_files = 'apple_maps_flutter/Sources/apple_maps_flutter/**/*.swift'
  s.dependency 'Flutter'

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.9'
end
