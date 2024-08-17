# frozen_string_literal: true

require_relative '../abstract_factory/gui_factory'
require_relative '../concrete_product/mac_button'
require_relative '../concrete_product/mac_checkbox'

class MacFactory
  include GUIFactory

  def create_button
    MacButton.new
  end

  def create_checkbox
    MacCheckbox.new
  end
end
