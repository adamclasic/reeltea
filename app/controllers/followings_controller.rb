class FollowingsController < ApplicationController
    def create
        f = Following.new(follower_id: current_user.id, followed_id: params['id'])
        if f.save
            set_flash_message! :notice, :followed
            redirect_to user_path(params['id'])
        else
            flash[:error] = @f.errors.full_messages
        end
    end

    def destroy
        f = Following.find_by(follower_id: current_user.id, followed_id: params['id'])
        if f.delete
            set_flash_message! :notice, :unfollowed
            redirect_to user_path(params['id'])
        else
            flash[:error] = @f.errors.full_messages
        end


    end
end
