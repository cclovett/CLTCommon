Pod::Spec.new do |s|

  s.name         = "CLTCommon"
  s.version      = "0.0.4"
  s.summary      = "A short description of CLTCommon."

  s.description  = <<-DESC
                   A longer description of CLTCommon in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/cclovett/CLTCommon"
  
  s.authors             = { "Cc" => "196159353@qq.com" }

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/cclovett/CLTCommon.git", :tag => "0.0.4"}

  s.source_files  = "CLTCommon", "CLTCommon/**/*.{h,m,mm,cpp,c}", 'CLTCommon/CLTCommon.h'

  s.requires_arc = true

#  s.frameworks = 'ImageIO', 'CoreMotion', 'CoreMedia', 'CoreImage', 'CoreGraphics', 'CoreData'
  
#  s.libraries = 'z', 'stdc++', 'c++'
  
end
