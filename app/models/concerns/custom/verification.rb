require_dependency Rails.root.join('app', 'models', 'concerns', 'verification').to_s

module Verification
  extend ActiveSupport::Concern

  def sms_verified?
    true
  end

  def level_two_verified?
    level_two_verified_at.present? || residence_verified?
  end

  def level_three_verified?
    level_two_verified?
  end

end

