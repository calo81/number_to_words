Gem::Specification.new do |s|
  s.name = "numbers_to_words"
  s.summary = "Convert numbers to words in multiple languages"
  s.description = File.read(File.join(File.dirname(__FILE__), 'README.md'))
  s.version = "0.5.0"
  s.author = "Carlo Scarioni"
  s.email = "carlo.scarioni@gmail.com"
  s.homepage = "http://cscarioni.blogspot.com"
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.9'
  s.files = Dir['**/**']
  s.test_files = Dir["spec/*_spec.rb"]
  s.has_rdoc = false
end