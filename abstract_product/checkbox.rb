# frozen_string_literal: true

module Checkbox
  def render
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def on_change
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

