Pod::Spec.new do |s|
  s.name         = "BugtagsIO"
  s.version      = "1.3.1"
  s.summary      = "Improve your app quality and reliability through In-App bug reporting and crash reporting. Learn more at https://www.bugtags.io."
  s.homepage     = "https://www.bugtags.io"
  s.license      = {
      :type => 'Commercial',
      :text => <<-LICENSE
                Copyright (C) 2016 Bugtags.
                Permission is hereby granted to use this framework as is, modification are not allowed.
                All rights reserved.
        
        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
        IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
        FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
        AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
        LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
        OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
        THE SOFTWARE.
      LICENSE
    }
  s.author              = { "Bugtags" => "dev@bugtags.io" }
  s.platform            = :ios, '6.0'
  s.source              = { :git => "https://github.com/bugtagsio/BugtagsIO-iOS.git", :tag => s.version.to_s }
  s.source_files        = 'Bugtags.framework/Versions/A/Headers/*.{h}'
  s.resources           = 'Bugtags.bundle'
  s.preserve_paths      = 'Bugtags.framework/*', 'Bugtags.bundle'
  s.frameworks          = 'UIKit', 'ImageIO', 'AVFoundation', 'SystemConfiguration', 'CoreLocation', 'Security', 'CFNetwork', 'Bugtags'
  s.xcconfig            =  { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/BugtagsIO/"', 'OTHER_LDFLAGS' => '-ObjC' }
  s.requires_arc        = true
end