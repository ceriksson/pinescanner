#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint pinescanner.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'pinescanner'
  s.version          = '0.0.1'
  s.summary          = 'Pinata app QR scanner project.'
  s.description      = <<-DESC
A QR scanner plugin for the Pinata app.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Maida Labs Ltd.' => 'hello@joinpinata.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'MTBBarcodeScanner'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
