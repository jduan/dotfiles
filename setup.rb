#!/usr/bin/env ruby
# create symlinks from home dir to dot files under ~/dotfiles
# ignore files below:
#   .git

require "fileutils"

EXCLUDE_LIST = [ ".", "..", ".git", ".vim", ".vimrc" ]

HOME = ENV['HOME']
target_dir = File.expand_path(File.dirname(__FILE__))
src_dir = HOME + "/"
Dir.chdir(target_dir)
Dir.glob('.*').each do |file|
  unless EXCLUDE_LIST.include? file
    src_path = src_dir + file
    target_path = "#{target_dir}/#{file}"
    puts "WARNING: src_path #{src_path} exists, removing it now!"
    FileUtils.rm_rf(src_path)
    puts "creating symlink: from #{src_path} to #{target_path}"
    `ln -s #{target_path} #{src_path}`
  end
end
