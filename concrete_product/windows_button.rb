# frozen_string_literal: true

require_relative '../abstract_product/button'

class WindowsButton
  include Button

  def render
    puts 'WindowsButton render'
  end

  def on_click
    puts 'WindowsButton on_click'
  end
end
