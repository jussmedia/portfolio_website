class BaseController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def site_name
    I18n.t('site_name')
  end
  helper_method :site_name

  def tag_line
    I18n.t('tag_line')
  end
  helper_method :tag_line

end
