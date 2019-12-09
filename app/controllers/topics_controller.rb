class TopicsController < ApplicationController

  def show
  	@topic_attribute = Topic.find(params[:id])
  	@topic = Lesson.where(topic_id: params[:id])
  end

end
