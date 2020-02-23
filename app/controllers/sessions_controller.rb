# frozen_string_literal: true

# Manages sessions with help from omniauth
class SessionsController < ApplicationController
  def new
    redirect_to '/auth/google_oauth2'
  end

  def create
    auth = request.env['omniauth.auth']
    # if already logged in,
    user = User.where(
      provider: auth['provider'],
      uid: auth['uid'].to_s
    ).first || User.find_or_create_with_omniauth(auth)
    reset_session
    session[:user_id] = user.id
    redirect_to root_url, notice: 'Signed in!'
  end

  def destroy
    reset_session
    redirect_to root_url, notice: 'Signed out!'
  end

  def failure
    redirect_to root_url, alert: "Authentication error: #{params[:message].humanize}"
  end
end
