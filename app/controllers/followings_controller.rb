class FollowingsController < ApplicationController
  def create
    f = Following.new(follower_id: current_user.id, followed_id: params['id'])
    if f.save
      flash[:notice] = 'followed succesful'
    else
      flash[:notice] = f.errors.full_messages.join(', ')
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    f = Following.find_by(follower_id: current_user.id, followed_id: params['id'])
    if f.delete
      flash[:notice] = 'unfollwed succesful'
    else
      flash[:notice] = f.errors.full_messages.join(', ')
    end
    redirect_back(fallback_location: root_path)
  end
end
