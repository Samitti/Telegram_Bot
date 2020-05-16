require_relative '../lib/msg_processor.rb'

class BotInitializer < MsgProcessor
  attr_reader :token
  def initialize
    SearchEngine.new
    @token = '1154355582:AAH5QjYvHIlJ3GdUMejQ7Om4s3mpsTbb0-o'
  end

  def msg_initialize(name, msg)
    msg_reader(name, msg)
  end
end
