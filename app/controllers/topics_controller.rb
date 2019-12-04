class TopicsController < ApplicationController

  def show
  	@topic = Lesson.where(topic_id: params[:id])
  end

end
