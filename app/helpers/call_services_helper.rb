module CallServicesHelper

  def belongs_to_user(call_service)
    use_signed_in? && call_service.user == current_user
  end

end
