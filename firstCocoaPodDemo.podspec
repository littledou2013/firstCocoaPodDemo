Pod::Spec.new do |s|
  s.name             = 'firstCocoaPodDemo'
  s.version          = '0.1.0'
  s.summary          = 'firstCocoaPodDemo'

 s.description      = <<-DESC
firstCocoaPodDemo is just a demo
		      DESC

  s.homepage         = 'https://github.com/littledou2013/firstCocoaPodDemo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '陈小双' => 'cchen_xiao_shuang@163.com' }
  s.source           = { :git => 'https://github.com/littledou2013/firstCocoaPodDemo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'firstCocoaPodDemo/Classes/**/*'
end

