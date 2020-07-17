module ApplicationHelper
  def following?(user)
    user.followers.include?(current_user)
  end

  def current_user?(user)
    current_user == user
  end

  def active?(link_path)
    if current_page?(link_path)
      'active'
    else
      ''
    end
  end

  def print_image(user)
    if user.image.attachment
      image_tag(user.image, size: '90x90', class: 'rounded-circle')
    else
      image_tag('avatar.png', size: '90x90', class: 'rounded-circle')
    end
  end

  def print_image_squar(user)
    if user.image.attachment
      image_tag(user.image, size: '55x55', class: 'rounded')
    else
      image_tag('avatar.png', size: '55x55', class: 'rounded')
    end
  end

  def print_follow_btn(user)
    unless current_user?(user)
      if following?(user)
        content_tag :div, class: 'follow-btn f-profile' do
          link_to(following_path(id: user.id), method: :delete) do
            image_tag 'https://image.flaticon.com/icons/svg/149/149146.svg', size: '40x40'
          end
        end
      else
        content_tag :div, class: 'follow-btn f-profile' do
          link_to(followings_path(id: user.id), method: :post) do
            image_tag 'https://image.flaticon.com/icons/svg/149/149145.svg', size: '40x40'
          end
        end
      end
    end
  end

  def print_cover(user)
    if user.cover.attachment 
      image_tag(user.cover, class: 'w-100') 
    else
      image_tag('cover.jpg', class: 'w-100')
    end
  end

  def render_following_users(user_following_list)
    if !user_following_list.empty?
        render 'users/follows', list:  user_following_list
    else
        "No one to display."
    end
  end

  def print_tweet_btns(tweet)
    if current_user?(tweet.author)
      content_tag :td do link_to 'Edit', edit_tweet_path(tweet) end 
      content_tag :td do link_to 'Destroy', tweet, method: :delete, data: { confirm: 'Are you sure?' } end 
    end
      content_tag :td do link_to 'Show', tweet end
  end
end
