Pod::Spec.new do |s|

  s.name         = "IFLYSMC"
  s.version      = "1.0.3"
  s.summary      = "讯飞语音"
  s.description  = <<-DESC
                    讯飞语音SDK
                   DESC

  s.homepage     = "https://github.com/chaopengCoder/IFLYSMC"
  s.license      = "MIT"
  s.author       = { "chaopengCoder" => "chaopeng_coder@qq.com" }

  s.platform     = :ios, "8.0"

  s.requires_arc = true

  s.vendored_frameworks ='Source/*.framework'

  s.frameworks = 'AVFoundation','SystemConfiguration','Foundation','CoreTelephony','AudioToolbox','UIKit','CoreLocation','Contacts','AddressBook','QuartzCore','CoreGraphics'

  s.library = 'z','c++','icucore'

  s.license      = {
        :type => 'Copyright',
        :text => <<-LICENSE
        Copyright 2018 chaopeng_coder.com. All rights reserved.
        LICENSE
    }

end