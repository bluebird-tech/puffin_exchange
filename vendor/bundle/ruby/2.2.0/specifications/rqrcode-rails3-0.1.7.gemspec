# -*- encoding: utf-8 -*-
# stub: rqrcode-rails3 0.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "rqrcode-rails3"
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sam Vincent"]
  s.date = "2013-11-20"
  s.description = "Render QR codes with Rails 3"
  s.email = "sam.vincent@mac.com"
  s.homepage = "http://github.com/samvincent/rqrcode-rails3"
  s.rubygems_version = "2.4.6"
  s.summary = "Render QR codes with Rails 3"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rqrcode>, [">= 0.4.2"])
    else
      s.add_dependency(%q<rqrcode>, [">= 0.4.2"])
    end
  else
    s.add_dependency(%q<rqrcode>, [">= 0.4.2"])
  end
end
