# frozen_string_literal: true

module ApplicationHelper
  def get_id(url)
    url.split('/').last
  end
end
