Pod::Spec.new do |s|

  s.name         = "CLTCommon"
  s.version      = "0.0.1"
  s.summary      = "A short description of CLTCommon."

  s.description  = <<-DESC
                   A longer description of CLTCommon in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/cclovett/CLTCommon"
  
  s.authors             = { "Cc" => "fenghaoran@camera360.com" }

  s.ios.deployment_target = "6.0"
  s.osx.deployment_target = "10.8"

  s.source       = { :git => "https://github.com/cclovett/CLTCommon.git", :tag => "master" }

  s.source_files  = "CLTCommon", "CLTCommon/Classes/**/*.{h,m}"

  s.public_header_files = "CLTCommon/Classes/**/*.h"

  s.requires_arc = true
  
end
