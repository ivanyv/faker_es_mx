# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{faker_es_mx}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ivan Vega"]
  s.date = %q{2009-02-07}
  s.description = %q{Generate "fake" data formatted for es_MX.}
  s.email = %q{nope}
  s.files = %w(LICENSE README VERSION Rakefile setup.rb) + Dir.glob("{bin,lib,spec}/**/*")
  s.has_rdoc = true
  s.homepage = %q{http://github.com/ivanvr/faker_es_mx}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Generate "fake" data formatted for es_MX.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faker>, [">= 0.3.1"])
    else
      s.add_dependency(%q<faker>, [">= 0.3.1"])
    end
  else
    s.add_dependency(%q<faker>, [">= 0.3.1"])
  end
end
