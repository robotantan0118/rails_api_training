class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do |e|
    Rails.logger.info e.backtrace.join("\n")
    json_response({ message: e.message }, :not_found)
  end

  rescue_from ActiveRecord::RecordInvalid do |e|
    Rails.logger.info e.backtrace.join("\n")
    json_response({ message: e.message }, :unprocessable_entity)
  end
end
