require 'telegram/bot'
require_relative '../lib/bot_initializer.rb'

covid = BotInitializer.new

Telegram::Bot::Client.run(covid.token) do |bot|
  bot.listen do |message|
    msg = message.text
    puts msg
    result = covid.msg_initialize(message.from.first_name, msg)
    bot.api.send_message(chat_id: message.chat.id, text: result.to_s)
  end
end
