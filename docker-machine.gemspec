# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docker/machine/version'

Gem::Specification.new do |spec|
  spec.name = 'docker-machine'
  spec.version = Docker::Machine::VERSION
  spec.authors = ['JJ Buckley']
  spec.email = ['jj@bjjb.org']
  spec.summary = 'A ruby wrapper around docker-machine'
  spec.description = <<-DESCRIPTION
    Allows you to interact with docker-machine and the docker machines from
    Ruby.
  DESCRIPTION
  spec.homepage = 'http://github.com/bjjb/docker-machine'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'docker', '~> 0.3.1'
  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'cucumber', '~> 2.4'
end
