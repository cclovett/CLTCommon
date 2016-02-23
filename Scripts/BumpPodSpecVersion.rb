#!/usr/bin/env ruby

require 'pathname'


file_name = Pathname.new(File.dirname(__FILE__)).parent().realpath

Dir.chdir(file_name)


all_text_files = Dir.glob "*.podspec"

main_final_version = ""

all_text_files.each { |file2|
  full_path = file_name.to_s() +'/'+file2
  text = IO.read(full_path)

  text.scan(/(\s*[a-zA-Z0-9_]+\.version\s*=\s*['"][0-9.]+['"]\s*)/) do |old_version|
    old_version.kind_of?(Array) ? old_version = old_version[0] : old_version = old_version

    lastOneInt = old_version.match(/.*\.(\d+)/).captures[0]
    lastInt2 = (lastOneInt.to_i() + 1).to_s
    final_version = old_version.sub(/\.(\d+)(['"])/) { |word| '.'+lastInt2+$2 }


    if main_final_version.empty?

      main_final_version = final_version.match(/['"]([0-9.]+)['"]/).captures[0].slice!(0..-1)

      text.scan(/.*\.source\s+=\s*\{\s*:git *=> *['"].*['"] *}/) do |old_tag|
        old_tag.kind_of?(Array) ? old_tag = old_tag[0] : old_tag = old_tag
        text.scan(/.*\.source\s+=\s*\{\s*:git *=> *['"].*git['"] */) do |orl_prefix|
          text = text.sub(old_tag, orl_prefix + ', :tag => "' + main_final_version + '"}')
        end
      end
    end
    text = text.sub(old_version, final_version)
  end

  File.open(full_path, 'w') { |file3| file3.puts text }
  system 'unset GIT_DIR && git pull'
  system 'git add *.podspec'
  system 'git commit -m "update the CLTCommon"'
  system ('git tag ' + main_final_version)
  system 'git push --all --no-verify'
  system 'git push --tags --no-verify'
}




