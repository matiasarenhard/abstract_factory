# frozen_string_literal: true

module Button
  def render
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def on_click
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
