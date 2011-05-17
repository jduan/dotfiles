#!/usr/bin/env ruby
# create symlinks from home dir to dot files under ~/dotfiles
# ignore files below:
#   .git

dir = Dir.home + "/dotfiles/"
Dir.chdir(dir)
Dir.glob('.*').each do |file|
    if (file != "." && file != ".." && file != ".git")
        path = dir + file
        if File.exists?(path)
            puts "symlink #{path} exists already!"
        else 
            puts "create symlink: #{path}"
            `ln -s #{path} ~/#{file}`
        end
    end
end
