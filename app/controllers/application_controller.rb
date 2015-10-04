class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def find_design(id)
    designs = Rails.cache.read('designs') || SpoonFlower.parse_results
    designs.find {|design| design['id'] == id.to_i} if designs.present?
  end
end
