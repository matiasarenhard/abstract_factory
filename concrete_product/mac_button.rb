# frozen_string_literal: true

require_relative '../abstract_product/button'

class MacButton
  include Button

  def render
    puts 'MacButton render'
  end

  def on_click
    puts 'MacButton on_click'
  end
end
