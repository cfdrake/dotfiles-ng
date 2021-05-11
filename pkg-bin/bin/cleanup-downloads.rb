#!/usr/bin/env ruby

require "fileutils"

types_map = {
  :images => %w[jpg jpeg png bmp tiff HEIC],
  :apps => %w[dmg app],
  :zips => %w[gz zip tbz tar],
  :docs => %w[pdf html],
  :audio => %w[mp3 wav mid],
  :videos => %w[mov]
}

Dir.chdir(File.expand_path("~/Downloads"))

types_map.each do |type_name, types_array|
  FileUtils::mkdir_p(type_name.to_s)

  files = Dir.glob("*.{#{types_array.join(",")}}")
  
  files.each do |file|
    `mv "#{file}" "#{type_name.to_s}/#{file}"`
  end
end
