if RUBY_VERSION < '1.9.3'
  require 'backports/1.9.1/array/sample'
  require 'backports/1.9.2/random'
end
require 'digest/sha1'

class Array
  def consistent_sample(n=1, name='')
    seed = ::Digest::SHA1.hexdigest(self.sort.map(&:to_s).join << name).to_i(16)
    prng = ::Random.new(seed)
    self.sort.sample(n, :random => prng)
  end
end
