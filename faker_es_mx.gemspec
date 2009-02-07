Gem::Specification.new do |s|
  s.name = %q{faker_es_mx}
  s.version = "0.1.2
"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ivan Vega"]
  s.date = %q{2009-02-07}
  s.description = %q{Generate "fake" data formatted for es_MX.}
  s.email = %q{nope}
  s.files = ["LICENSE","README","VERSION","Rakefile","setup.rb","lib/faker_es_mx","lib/faker_es_mx/name.rb","lib/faker_es_mx/address.rb","lib/mx_cities.txt","lib/faker_es_mx.rb"]
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
