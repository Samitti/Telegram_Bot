require 'telegram/bot'
require_relative '../lib/bot_initializer.rb'

covid = BotInitializer.new
token = '1257620277:AAG7Lpct4knimb_AcgoUHEyhYGKxHaomIE0'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    msg = message.text
    puts msg
    result = covid.msg_initialize(message.from.first_name, msg)
    bot.api.send_message(chat_id: message.chat.id, text: "#{result}")
    #bot.api.send_message(chat_id: message.chat.id, text: "#{result},'\n' #{message.from.first_name}!")
  end
end
