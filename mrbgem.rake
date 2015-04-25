MRuby::Gem::Specification.new('mruby-thread') do |spec|
  spec.license = 'MIT'
  spec.authors = 'mattn'

  if build.toolchains.include?("androideabi")
    spec.cc.flags << '-DHAVE_PTHREADS'
  elsif build.toolchains.include?("gcc")
    spec.cc.flags << '-DHAVE_PTHREAD'
    spec.linker.libraries << ['pthread']
  end
end
