Pod::Spec.new do |s|
  s.name         = 'TunnelKit'
  s.version      = '1.0.0'
  s.summary      = 'TunnelKit VPN core'
  s.homepage     = 'https://github.com/andreasagmplast/tunnelkit'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'You' => 'you@example.com' }
  s.platform     = :ios, '15.0'
  s.source       = { :git => 'https://github.com/andreasagmplast/tunnelkit.git', :branch => 'static-only' }

  s.static_framework = true
  s.requires_arc = true

  # OpenVPN Core
  s.subspec 'OpenVPNCore' do |sp|
    sp.source_files = 'Sources/TunnelKitOpenVPNCore/**/*.swift'
    sp.dependency 'OpenSSL-Apple'
  end

  # WireGuard Core
  s.subspec 'WireGuardCore' do |sp|
    sp.source_files = 'Sources/TunnelKitWireGuardCore/**/*.swift'
  end
end
