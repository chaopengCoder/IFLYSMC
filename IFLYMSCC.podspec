Pod::Spec.new do |s|

  s.name         = "IFLYMSCC"
  s.version      = "1.1.1"
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

  s.xcconfig            = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/iflyMSCKit/**\"" }

  s.frameworks = 'AVFoundation','SystemConfiguration','Foundation','CoreTelephony','AudioToolbox','UIKit','CoreLocation','Contacts','AddressBook','QuartzCore','CoreGraphics'
  s.libraries = 'z','c++','icucore'

  s.requires_arc = false

  s.prepare_command     = <<-EOF
  mkdir Source/iflyMSC.framework/Modules
  touch Source/iflyMSC.framework/Modules/module.modulemap
  cat <<-EOF > Source/iflyMSC.framework/Modules/module.modulemap
  framework module iflyMSC {
    header "IFlyAudioSession.h"
    header "IFlyDataUploader.h"
    header "IFlyDebugLog.h"
    header "IFlyISVDelegate.h"
    header "IFlyISVRecognizer.h"
    header "IFlyISVDelegate.h"
    header "IFlyMSC.h"
    header "IFlyPcmRecorder.h"
    header "IFlyRecognizerView.h"
    header "IFlyRecognizerViewDelegate.h"
    header "IFlyResourceUtil.h"
    header "IFlySetting.h"
    header "IFlySpeechConstant.h"
    header "IFlySpeechError.h"
    header "IFlySpeechEvaluator.h"
    header "IFlySpeechEvaluatorDelegate.h"
    header "IFlySpeechEvent.h"
    header "IFlySpeechRecognizer.h"
    header "IFlySpeechRecognizerDelegate.h"
    header "IFlySpeechSynthesizer.h"
    header "IFlySpeechSynthesizerDelegate.h"
    header "IFlySpeechUtility.h"
    header "IFlyUserWords.h"
    header "IFlyVoiceWakeuper.h"
    header "IFlyVoiceWakeuperDelegate.h"
      export *
      link "z"
      link "c++"
  }
  \EOF
  EOF
end
