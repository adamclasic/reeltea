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

  def print_image(f)
    if f.image.attachment 
      image_tag(f.image, size: '90x90', class: 'rounded-circle') 
    else
      image_tag('avatar.png', size: '90x90', class: 'rounded-circle') 
    end
  end

  def print_follow_btn(f)
    if following?(f) 
      content_tag :div, :class => "follow-btn f-profile" do
          link_to(following_path(id: f.id), method: :delete) do
          image_tag 'https://image.flaticon.com/icons/svg/149/149146.svg', size: '40x40'  
        end
      end
    else
      content_tag :div, :class => "follow-btn f-profile" do
          link_to(followings_path(id: f.id), method: :post) do
          image_tag 'https://image.flaticon.com/icons/svg/149/149145.svg', size: '40x40' 
        end
      end
    end
  end

  
end
