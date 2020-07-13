module ApplicationHelper
  def following?(user)
    user.followers.include?(current_user)
  end

  def current_user?(user)
    current_user == user
  end
end
