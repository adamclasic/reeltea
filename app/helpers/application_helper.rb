module ApplicationHelper
  def following?(user)
    user.followers.include?(current_user)
  end

  def current_user?(user)
    current_user == user
  end

  def is_avtive?(link_path)
    if current_page?(link_path)
      "active"
    else
      ""
    end
  end


    
end
