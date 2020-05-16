require_relative '../lib/bot_initializer.rb'

describe BotInitializer do
  let(:msg_init) { BotInitializer.new }
  let(:msg_one) { 'hi' }
  let(:msg_two) { 'ghsgw' }
  let(:result_one) { " Hi samuel!\n Please select country of your choice." }
  let(:resul_two) { "Sorry, no results found.\n samuel Please select country name!" }
  let(:name) { 'samuel' }

  describe '#msg_initialize' do
    it 'calls msg_reader and returns if message is valid' do
      expect(msg_init.msg_initialize(name, msg_one)).to eql(result_one)
    end

    it 'calls msg_reader and returns try again message if no valid message' do
      expect(msg_init.msg_initialize(name, msg_two)).to eql(resul_two)
    end
  end
end
