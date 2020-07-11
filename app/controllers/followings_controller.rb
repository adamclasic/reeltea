class FollowingsController < ApplicationController
def create
        f = Following.new(follower_id: current_user.id, followed_id: params['id'])
        f.save
        redirect_to user_path(params['id'])
    end

    def distroy
        f = Following.find_by(follower_id: current_user.id, followed_id: params['id'])
        f.delete
        redirect_to user_path(params['id'])
    end
end
