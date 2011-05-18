#!/usr/bin/env ruby
# create symlinks from home dir to dot files under ~/dotfiles
# ignore files below:
#   .git

target_dir = Dir.home + "/dotfiles/"
src_dir = Dir.home + "/"
Dir.chdir(target_dir)
Dir.glob('.*').each do |file|
    if (file != "." && file != ".." && file != ".git")
        src_path = src_dir + file
        target_path = target_dir + file
        if File.exists?(src_path)
            puts "symlink #{src_path} exists already!"
        else 
            puts "create symlink: #{src_path}"
            `ln -s #{target_path} #{src_path}`
        end
    end
end
