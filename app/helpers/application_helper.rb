# frozen_string_literal: true

module ApplicationHelper
  def get_id(url)
    # finds id from url
    url.split('/').last
  end

  def check_for_record(record)
    # will return no record if record is missing from json
    return 'No record' unless record.present?

    record
  end
end
