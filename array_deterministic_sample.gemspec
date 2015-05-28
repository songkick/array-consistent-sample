Gem::Specification.new do |s|
  s.name                       = 'array-deterministic-sample'
  s.version                    = '0.0.1'
  s.licenses                   = ['MIT']
  s.summary                    = 'Get random array members by consistent hashing.'
  s.description                = 'Array#deterministic_sample(n=1, name='') selects array members using Array#sample with a PRNG seeded with a SHA1 hexdigest of the sorted contents of the array and an optional string.'
  s.authors                    = ['Robin Tweedie']
  s.email                      = 'robin.tweedie@gmail.com'
  s.files                      = ['lib/array_deterministic_sample.rb']
  s.homepage                   = 'https://github.com/songkick/array_deterministic_sample'
  s.add_development_dependency 'minitest', '~> 5.7.0'
  s.required_ruby_version      = '1.8.7', '>= 1.9.3'
  s.requirements               = 'backports gem required for Ruby < 1.9.2'
end
