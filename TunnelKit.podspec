Pod::Spec.new do |s|
  s.name         = 'TunnelKit'
  s.version      = '1.0.0'
  s.summary      = 'TunnelKit VPN framework'
  s.homepage     = 'https://github.com/andreasagmplast/tunnelkit'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'You' => 'you@example.com' }
  s.platform     = :ios, '15.0'
  s.source       = { :git => 'https://github.com/andreasagmplast/tunnelkit.git', :branch => 'static-only' }

  s.static_framework = true
  s.requires_arc = true

  # -------------------------
  # Core (Swift)
  # -------------------------
  s.subspec 'Core' do |sp|
    sp.source_files = 'Sources/TunnelKitCore/**/*.swift'
    sp.dependency 'SwiftyBeaver'
  end

  # -------------------------
  # Core (C)
  # -------------------------
  s.subspec 'CTunnelKitCore' do |sp|
    sp.source_files = 'Sources/CTunnelKitCore/**/*.{h,c}'
    sp.public_header_files = 'Sources/CTunnelKitCore/**/*.h'
    sp.requires_arc = false
  end

  # -------------------------
  # OpenVPN Protocol (C)
  # -------------------------
  s.subspec 'CTunnelKitOpenVPNProtocol' do |sp|
    sp.source_files = 'Sources/CTunnelKitOpenVPNProtocol/**/*.{h,c}'
    sp.public_header_files = 'Sources/CTunnelKitOpenVPNProtocol/**/*.h'
    sp.requires_arc = false
  end

  # -------------------------
  # OpenVPN Protocol (Swift)
  # -------------------------
  s.subspec 'OpenVPNProtocol' do |sp|
    sp.source_files = 'Sources/TunnelKitOpenVPNProtocol/**/*.swift'
    sp.dependency 'TunnelKit/CTunnelKitOpenVPNProtocol'
    sp.dependency 'TunnelKit/CTunnelKitCore'
    sp.dependency 'TunnelKit/Core'
  end

  # -------------------------
  # OpenVPN Core
  # -------------------------
  s.subspec 'OpenVPNCore' do |sp|
    sp.source_files = 'Sources/TunnelKitOpenVPNCore/**/*.swift'
    sp.dependency 'TunnelKit/OpenVPNProtocol'
    sp.dependency 'TunnelKit/CTunnelKitCore'
    sp.dependency 'OpenSSL-Apple'
  end

  # -------------------------
  # WireGuard Core
  # -------------------------
  s.subspec 'WireGuardCore' do |sp|
    sp.source_files = 'Sources/TunnelKitWireGuardCore/**/*.swift'
    sp.dependency 'TunnelKit/Core'
  end
end
