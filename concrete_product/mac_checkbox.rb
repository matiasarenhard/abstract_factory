# frozen_string_literal: true

require_relative '../abstract_product/checkbox'

class MacCheckbox
  include Checkbox

  def render
    puts 'MacCheckbox render'
  end

  def on_change
    puts 'MacCheckbox on_change'
  end
end
