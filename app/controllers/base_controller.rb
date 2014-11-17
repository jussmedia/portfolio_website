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

  # If the user logged in, return current otherwise return guest
  def current_or_guest_user
    if current_user
      if session[:guest_user_id] && session[:guess_user_id] != current_user
        logging_in
        guest_user(with_retry = false).try(:destroy)
        session[:guest_user_id] = nil
      end
      current_user
    else
      guest_user
    end
  end
  helper_method :current_or_guest_user
  
  # find the guest_user object associated with the current session or
  # create one if not found
  def guest_user(with_retry = true)
    @cached_guest_user ||= User.find(session[:guest_user_id] ||= create_guest_user.id)

  rescue ActiveRecord::RecordNotFound
    session[:guest_user_id] = nil
    guest_user if with_retry
  end

  private

    # Purpose of this will be to hand off any thing the guest user
    # did to a real user.
    def logging_in
      # At some point this will need to occur
      # For example:
        # guest_comments = guest_user.comments.all
        # guest_comments.each do |comment|
          # comment.user_id = current_user.id
          # comment.save!
        # end
    end

    def create_guest_user
      u = User.create(first_name: 'guest', last_name: 'guest',
        e_mail: "guest_#{Time.now.to_i}#{rand(100)}@example.com")
      u.save!(validate: false)
      session[:guest_user_id] = u.id
      u
    end
end
