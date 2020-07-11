module ApplicationHelper

  def following?(user)
    current_user.followeds.include?(user)
  end

  def same_user?(user)
    current_user == user
  end

end
