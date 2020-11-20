Pod::Spec.new do |spec|

  spec.name         = "DateValidator"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library made in Swift for helping date validation"

  spec.description  = <<-DESC
  This library provides a class to help validate if a date exists.
  Format:
  DateValidator.validateDate(day: Int, month: Int, year: Int) -> Bool
                   DESC

  spec.homepage     = "https://github.com/daniielf/DateValidator"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Daniel Freitas" => "daniielf.13@gmail.com" }

  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5"

  spec.source        = { :git => "https://github.com/daniielf/DateValidator.git", :tag => "#{spec.version}" }
  spec.source_files  = "DateValidator/**/*.{h,m,swift}"

end
