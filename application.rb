# frozen_string_literal: true

require_relative 'abstract_factory/gui_factory'
require_relative 'concrete_factory/windows_factory'
require_relative 'concrete_factory/mac_factory'

class Application
  attr_reader :factory

  def initialize(factory)
    @factory = factory
  end

  def create_ui
    button = factory.create_button
    checkbox = factory.create_checkbox
    button.render
    checkbox.render
  end
end

puts "================ Mac UI ================"
puts Application.new(MacFactory.new).create_ui
puts "="*40

puts

puts "================ Windows UI ============"
puts Application.new(WindowsFactory.new).create_ui
puts "="*40


puts <<~ASCII
                           __  . .* ,
                        ~#@#%(" .,$ @
                        ."^ ';"
                       ..
                      ;. :                                   . .
                      ;==:                     ,,   ,.@#(&*.;'
                      ;. :                   .;#$% & ^^&
                      ;==:                   &  ......
                      ;. :                   ,,;      :
                      ;==:  ._______.       ;  ;      :
                      ;. :  ;    ###:__.    ;  ;      :
_____________________.'  `._;       :  :__.' .'        `.__________________
ASCII

puts

puts "Abstract Factory - Matias Arenhard"

