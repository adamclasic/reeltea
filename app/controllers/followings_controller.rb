class FollowingsController < ApplicationController
  def create
    f = Following.new(follower_id: current_user.id, followed_id: params['id'])
    if f.save
      flash[:notice] = 'followed succesful'
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = f.errors.full_messages.join(', ')
    end
  end

  def destroy
    f = Following.find_by(follower_id: current_user.id, followed_id: params['id'])
    if f.delete
      flash[:notice] = 'unfollwed succesful'
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = f.errors.full_messages.join(', ')
    end
  end
end
