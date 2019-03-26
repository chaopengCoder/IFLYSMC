Pod::Spec.new do |s|

  s.name         = "IFLYSMC"
  s.version      = "1.0.5"
  s.summary      = "讯飞语音"
  s.description  = <<-DESC
                    科大讯飞 iOS
                   DESC

  s.homepage     = "https://github.com/chaopengCoder/IFLYSMC"
  s.license      = "MIT"
  s.author       = { "chaopengCoder" => "chaopeng_coder@qq.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/chaopengCoder/IFLYSMC.git", :tag => "#{s.version}" }

  s.vendored_frameworks = 'Source/iflyMSC.framework'

  s.frameworks = 'CoreLocation', 'CoreTelephony', 'AVFoundation', 'Contacts', 'AddressBook', 'AudioToolbox', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics'
  s.libraries = 'z','c++'

  s.requires_arc = false

  
end
