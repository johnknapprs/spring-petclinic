# frozen_string_literal: true

require 'fileutils'

project_root = File.expand_path('.')
update_files = if ARGV.first.to_s.strip.eql?('base')
                 Dir['scripts/demo_base/*'].map { |f| File.expand_path(f) }
               else
                 Dir['scripts/demo_cred/*'].map { |f| File.expand_path(f) }
               end

puts 'Updating Jenkinsfile'

update_files.each do |file|
  FileUtils.cp(file, project_root)
end
