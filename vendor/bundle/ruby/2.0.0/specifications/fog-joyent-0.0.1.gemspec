# -*- encoding: utf-8 -*-
# stub: fog-joyent 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "fog-joyent"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["The Effeminate Batman"]
  s.date = "2017-04-07"
  s.description = "Module for the 'fog' gem to support Joyent."
  s.email = "eb@frosthawk.com"
  s.homepage = "https://github.com/fog/fog-joyent"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "This library can be used as a module for 'fog'."

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog-core>, ["~> 1.42"])
      s.add_runtime_dependency(%q<fog-json>, [">= 1.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.10"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<shindo>, ["~> 0.3"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.34"])
    else
      s.add_dependency(%q<fog-core>, ["~> 1.42"])
      s.add_dependency(%q<fog-json>, [">= 1.0"])
      s.add_dependency(%q<bundler>, ["~> 1.10"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<shindo>, ["~> 0.3"])
      s.add_dependency(%q<rubocop>, ["~> 0.34"])
    end
  else
    s.add_dependency(%q<fog-core>, ["~> 1.42"])
    s.add_dependency(%q<fog-json>, [">= 1.0"])
    s.add_dependency(%q<bundler>, ["~> 1.10"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<shindo>, ["~> 0.3"])
    s.add_dependency(%q<rubocop>, ["~> 0.34"])
  end
end
