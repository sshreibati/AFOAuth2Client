Pod::Spec.new do |s|
  s.name     = 'AFOAuth2Client'
  s.version  = '0.2.0'
  s.license  = 'MIT'
  s.summary  = 'AFNetworking Extension for OAuth 2 Authentication.'
  s.homepage = 'https://github.com/AFNetworking/AFOAuth2Client'
  s.authors  = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/AFNetworking/AFOAuth2Client.git', :tag => '0.2.0' }
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.8'

  s.source_files = 'AFOAuth2Client'

  s.ios.frameworks = 'Security'

  s.dependency 'AFNetworking', '~> 2.1.0'

  s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
  #import <Security/Security.h>
  #if __IPHONE_OS_VERSION_MIN_REQUIRED
    #import <SystemConfiguration/SystemConfiguration.h>
    #import <MobileCoreServices/MobileCoreServices.h>
  #else
    #import <SystemConfiguration/SystemConfiguration.h>
    #import <CoreServices/CoreServices.h>
  #endif
#endif /* __OBJC__*/
EOS
end
