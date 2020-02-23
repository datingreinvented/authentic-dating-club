# frozen_string_literal: true

# Allows users to create an account
class User < ApplicationRecord
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
        user.name = auth['info']['name'] || ''
        user.email = auth['info']['email'] || ''
      end
    end
  end

  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Metrics/AbcSize
  def self.find_or_create_with_omniauth(auth)
    if (existing = User.find_by(email: auth['info']['email']))
      existing.update(provider: auth['provider'], uid: auth['uid'])
      existing
    else
      create! do |user|
        user.provider = auth['provider']
        user.uid = auth['uid']
        if auth['info']
          user.name = auth['info']['name'] || ''
          user.email = auth['info']['email'] || ''
        end
      end
    end
  end
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Metrics/AbcSize
end
