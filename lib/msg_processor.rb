require_relative '../lib/search_engine.rb'

class MsgProcessor < SearchEngine
  def msg_reader(name, msg)
    @clinet_name = name
    msg = msg.downcase
    case msg
    when 'hi'
      greeter
    else
      msg_validator(msg)
    end
  end

  private

  def greeter
    " Hi #{@clinet_name}!\n Please select country of your choice."
  end

  def msg_validator(msg)
    if find_nation(msg).length > 1
      find_nation(msg)
    else
      "Sorry, no results found.\n #{@clinet_name} Please select country name!"
    end
  end
end
