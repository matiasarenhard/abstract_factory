# frozen_string_literal: true

require_relative '../abstract_factory/gui_factory'
require_relative '../concrete_product/windows_button'
require_relative '../concrete_product/windows_checkbox'

class WindowsFactory
  include GUIFactory

  def create_button
    WindowsButton.new
  end

  def create_checkbox
    WindowsCheckbox.new
  end
end
