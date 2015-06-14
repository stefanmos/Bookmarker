 class Bookmark < ActiveRecord::Base
	belongs_to :user
	acts_as_taggable # Alias for acts_as_taggable_on :tags
  	acts_as_taggable_on :tag_list

  	class UsersController < ApplicationController
	  def user_params
	    params.require(:user).permit(:name, :url, :tag_list => []) ## Rails 4 strong params usage
	  end
	end
end
