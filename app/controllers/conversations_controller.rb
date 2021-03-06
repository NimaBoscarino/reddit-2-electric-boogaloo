class ConversationsController < ApplicationController
  def index
    topic_id = params['topic_id']
    # req.params.topic_id
    @topic = Topic.find(topic_id)

    # @conversations = Conversation.where(topic: @topic)
    @conversations = @topic.conversations


  end

  def create
    @topic = Topic.find(params['topic_id'])
    @topic.conversations.create title: params['conversation']['title']

    redirect_to topics_path
  end

end
