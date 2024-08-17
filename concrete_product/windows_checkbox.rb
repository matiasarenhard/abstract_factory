# frozen_string_literal: true

require_relative '../abstract_product/checkbox'

class WindowsCheckbox
  include Checkbox

  def render
    puts 'WindowsCheckbox render'
  end

  def on_change
    puts 'WindowsCheckbox on_change'
  end
end