require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def user
    @user ||= users(:user1)
  end

  def test_valid
    assert user.valid?
  end
end
