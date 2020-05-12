require 'telegram/bot'
require_relative '../lib/msg_processorgit .rb'

my_bot = MsgProcessor.new
token = '1257620277:AAG7Lpct4knimb_AcgoUHEyhYGKxHaomIE0'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    msg = message.text
    puts msg
    result = my_bot.msg_reader(msg)
    bot.api.send_message(chat_id: message.chat.id, text: "#{result}, #{message.from.first_name}!")
  end
end
