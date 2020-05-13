require_relative '../lib/msg_processor.rb'

class BotInitializer < MsgProcessor
  attr_reader :token
  def initialize
    SearchEngine.new
    @token = '1257620277:AAG7Lpct4knimb_AcgoUHEyhYGKxHaomIE0'
  end

  def msg_initialize(name, msg)
    msg_reader(name, msg)
  end
end
