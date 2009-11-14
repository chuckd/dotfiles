#!/usr/bin/env ruby

# from http://errtheblog.com/posts/89-huba-huba

home = ENV['HOME']

Dir.chdir File.dirname(__FILE__) do
  dotfiles_dir = Dir.pwd.sub(home + '/', '')

  Dir['*'].each do |file|
    next if file =~ /\./
    target = File.join(home, ".#{file}")
    unless File.exist? target
      system %[ln -vsf #{File.join(dotfiles_dir, file)} #{target}]
    end
  end

  `echo 'git push' > .git/hooks/post-commit`
  `chmod 755 .git/hooks/post-commit`
end

