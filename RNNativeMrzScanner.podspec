require 'json'
version = JSON.parse(File.read('package.json'))["version"]

Pod::Spec.new do |s|

  s.name            = "RNNativeMrzScanner"
  s.version         = version
  s.homepage        = "https://github.com/smancebo/react-native-mrz-scanner"
  s.summary         = "A MRZ Passpoer Scanner for react-native"
  s.license         = "MIT"
  s.author          = { "Samuel J Manceboi" => "sjmancebo@gmail.com" }
  s.ios.deployment_target = '7.0'
  s.source          = { :git => "https://github.com/smancebo/react-native-mrz-scanner.git"}
  s.source_files    = 'RNPassportScanner/*.{h,m}, MrzScanner.swift'
  s.preserve_paths  = "**/*.js"
  s.frameworks = 'UIKit', 'Foundation'

  s.dependency 'React'

end
