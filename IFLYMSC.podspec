Pod::Spec.new do |s|

  s.name         = "IFLYSMC"
  s.version      = "1.0.0"
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

  s.xcconfig            = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/IFLYSMC/**\"" }

  s.frameworks = 'CoreLocation', 'CoreTelephony', 'AVFoundation', 'Contacts', 'AddressBook', 'AudioToolbox', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics'
  s.libraries = 'z','c++'

  s.requires_arc = false

  s.prepare_command     = <<-EOF
  mkdir Source/iflyMSC.framework/Modules
  touch Source/iflyMSC.framework/Modules/module.modulemap
  cat <<-EOF > Source/iflyMSC.framework/Modules/module.modulemap
  framework module iflyMSC {
      header "IFlyMSC.h"
      header "IFlyAudioSession.h"
      header "IFlyContact.h"
      header "IFlyDataUploader.h"
      header "IFlyDebugLog.h"
      header "IFlyISVDelegate.h"
      header "IFlyISVRecognizer.h"
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
      header "IFlySpeechUnderstander.h"
      header "IFlySpeechUtility.h"
      header "IFlyTextUnderstander.h"
      header "IFlyUserWords.h"
      header "IFlyPcmRecorder.h"
      header "IFlyVoiceWakeuper.h"
      header "IFlyVoiceWakeuperDelegate.h"

      export *

      link "z"
      link "c++"
  }
  \EOF
  EOF
end