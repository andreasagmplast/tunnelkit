Pod::Spec.new do |s|
  s.name             = 'TunnelKit'
  s.version          = '1.0.0'  # adjust as needed
  s.summary          = 'TunnelKit library with static OpenSSL'
  s.homepage         = 'https://github.com/andreasagmplast/tunnelkit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'you@example.com' }
  s.platform         = :ios, '15.0'
  s.source           = { :git => 'https://github.com/andreasagmplast/tunnelkit.git', :branch => 'static-only' }
  s.source_files     = 'Sources/**/*.{swift,h,m,c,cpp}', 'Include/**/*.h'
  s.public_header_files = 'Include/**/*.h'
  s.requires_arc     = true
  s.static_framework = true
  s.dependency 'OpenSSL-Apple'
end
