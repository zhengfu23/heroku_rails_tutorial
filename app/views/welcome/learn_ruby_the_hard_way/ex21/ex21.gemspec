lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'ex21'
  spec.version       = '1.0'
  spec.authors       = ['Zheng Fu']
  spec.email         = ['zf38@cornell.edu']
  spec.summary       = %q(It does stuff)
  spec.description   = %q(Longer description of your project.)
  spec.homepage      = 'http://zhengfu23.us/'
  spec.license       = 'MIT'

  spec.files         = ['lib/ex21.rb']
  spec.executables   = ['bin/ex21']
  spec.test_files    = ['tests/test_ex21.rb']
  spec.require_paths = ['lib']
end