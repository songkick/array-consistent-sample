Gem::Specification.new do |s|
  s.name                       = 'array-consistent-sample'
  s.version                    = '1.0.0'
  s.licenses                   = ['MIT']
  s.summary                    = 'Array#sample with consistent results'
  s.description                = 'Returns consistent array subsets using Array#sample with a PRNG seeded with a hexdigest of the sorted contents of the array and an optional string.'
  s.authors                    = ['Robin Tweedie']
  s.email                      = 'robin.tweedie@gmail.com'
  s.files                      = ['lib/array_consistent_sample.rb']
  s.homepage                   = 'https://github.com/songkick/array_consistent_sample'
  s.required_ruby_version      = '1.8.7', '>= 1.9.3'
  s.requirements               = 'backports gem required for Ruby 1.8.7'
  s.add_development_dependency 'minitest', '~> 5.7.0'
end
