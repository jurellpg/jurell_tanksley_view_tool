
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jurell_tanksley_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "jurell_tanksley_view_tool"
  spec.version       = JurellTanksleyViewTool::VERSION
  spec.authors       = ["Jurell Tanksley"]
  spec.email         = ["jurell@projectguild.com"]

  spec.summary       = %q{This is for a dynamic copyright on the footer}
  spec.description   = %q{This is useful if you want to not have to manually change the copyright every year.}
  spec.homepage      = "https://jurelltanksley.com"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
end