# -*- encoding: utf-8 -*-
# stub: sr_fax 0.5.3 ruby lib

Gem::Specification.new do |s|
  s.name = "sr_fax".freeze
  s.version = "0.5.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jeff Klink".freeze, "Sean Esson".freeze, "Brady Bouchard".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-08-18"
  s.description = "This is the 'unofficial' SRFax (http://www.srfax.com) API wrapper for ruby.  The API documentation for SRFax can be found at https://www.srfax.com/srf/media/SRFax-REST-API-Documentation.pdf".freeze
  s.email = ["techcanuck@gmail.com".freeze]
  s.homepage = "https://github.com/TechCanuck/srfax".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "SR Fax Module provides and easy way to access SR fax online services to send, receive or query faxes".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 11.0"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.8"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.8"])
      s.add_runtime_dependency(%q<logger>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 6", ">= 4.2"])
      s.add_runtime_dependency(%q<rest-client>.freeze, ["~> 2.0"])
    else
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_dependency(%q<rake>.freeze, ["~> 11.0"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.8"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.8"])
      s.add_dependency(%q<logger>.freeze, ["~> 1"])
      s.add_dependency(%q<activesupport>.freeze, ["< 6", ">= 4.2"])
      s.add_dependency(%q<rest-client>.freeze, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, ["~> 11.0"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.8"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.8"])
    s.add_dependency(%q<logger>.freeze, ["~> 1"])
    s.add_dependency(%q<activesupport>.freeze, ["< 6", ">= 4.2"])
    s.add_dependency(%q<rest-client>.freeze, ["~> 2.0"])
  end
end
