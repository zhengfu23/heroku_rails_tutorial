lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'lexicon'
  spec.version       = '1.0'
  spec.authors       = ['Zheng Fu']
  spec.email         = ['zf38@cornell.edu']
  spec.summary       = %q(It does stuff)
  spec.description   = %q(Longer description of your project.)
  spec.homepage      = 'http://zhengfu23.us/'
  spec.license       = 'MIT'

  spec.files         = ['lib/lexicon.rb']
  spec.executables   = ['bin/lexicon']
  spec.test_files    = ['tests/test_lexicon.rb']
  spec.require_paths = ['lib']
end