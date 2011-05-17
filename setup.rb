#!/usr/bin/env ruby
# create symlinks from home dir to dot files under ~/dotfiles
# ignore files below:
#   .git

dir = Dir.home + "/dotfiles/"
Dir.chdir(dir)
Dir.glob('.*').each do |file|
    if (file != "." && file != ".." && file != ".git")
        path = dir + file
        puts "create symlink: #{path}"
        `ln -s #{path} ~/#{file}`
    end
end
