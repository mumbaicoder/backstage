class ConfirmationsController < Milia::ConfirmationsController
  
  
private

  def set_confirmable()
    @confirmable = User.find_or_initialize_with_error_by(:confirmation_token, params[:confirmation_token])
end