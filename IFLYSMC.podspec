Pod::Spec.new do |s|

  s.name         = "IFLYSMC"
  s.version      = "1.0.2"
  s.summary      = "讯飞语音"
  s.description  = <<-DESC
                    讯飞语音SDK
                   DESC

  s.homepage     = "https://github.com/chaopengCoder/IFLYSMC"
  s.license      = "MIT"
  s.author       = { "chaopengCoder" => "chaopeng_coder@qq.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/chaopengCoder/IFLYSMC.git", :tag => "#{s.version}" }


  s.vendored_frameworks = 'Source/iflyMSC.framework'
  s.libraries = 'c++', 'z'
  s.frameworks = 'AVFoundation', 'SystemConfiguration', 'Foundation', 'CoreTelephony', 'AudioToolbox', 'UIKit', 'CoreLocation', 'Contacts', 'AddressBook', 'QuartzCore', 'CoreGraphics'
  s.requires_arc = true

end