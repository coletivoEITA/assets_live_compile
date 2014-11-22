$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "assets_live_compile"
  s.license     = "LGPL-3.0"
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Braulio Bhavamitra"]
  s.email       = ["brauliobo@gmail.com"]
  s.homepage    = %q{http://github.com/coletivoEITA/assets_live_compile}
  s.summary     = %q{Compile and save assets on demand instead of using rake assets:compile}
  #s.description = %q{}
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "activesupport"
  s.add_runtime_dependency "rails"
end

