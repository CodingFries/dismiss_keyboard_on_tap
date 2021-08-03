#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint dismiss_keyboard_on_tap.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'dismiss_keyboard_on_tap'
  s.version          = '0.0.1'
  s.summary          = 'Dismisses Keyboard by tapping outside text field on the screen.'
  s.description      = <<-DESC
Dismisses Keyboard by tapping outside text field on the screen.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
