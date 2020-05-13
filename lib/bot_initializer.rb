require_relative '../lib/msg_processor.rb'

class BotInitializer < MsgProcessor
    def def initialize
        wb_reader = SearchEngine.new     
    end
    
    def msg_initialize(name, msg)
        msg_reader(name, msg)
    end
end