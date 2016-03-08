$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'lib/taka/version'

Gem::Specification.new do |s|

      s.name              = "taka"
      s.version           = Taka::VERSION
      s.date              = Time.now.strftime('%Y-%m-%d')
      s.summary           = ""
      s.homepage          = "https://github.com/Zapotek/taka"
      s.email             = "tasos.laskos@gmail.com"
      s.authors           = [ "Tasos Laskos",
          'Aaron Patterson',
          'Mike Dalessio'
      ]

      s.files             = %w( README.rdoc CHANGELOG.rdoc )
      s.files            += Dir.glob("lib/**/**")
      s.extra_rdoc_files  = %w( README.rdoc CHANGELOG.rdoc )
      s.rdoc_options      = ["--charset=UTF-8"]

      s.add_dependency "nokogiri",        "~> 1.6.0"

      s.description = <<description
      Taka is a DOM (core and html) implementation for ruby. This software is EXTREMELY experimental. You may hurt yourself while using it.
description

end
