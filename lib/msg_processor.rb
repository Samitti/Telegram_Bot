class MsgProcessor
  def msg_reader(msg)
    case msg
    when 'Hi'
      greeter
    when 'Fun'
      make_fun
    else
      "I don't get you!"
    end
  end

  def greeter
    'Hello dear '
  end

  def make_fun
    'You look funny '
  end
end
