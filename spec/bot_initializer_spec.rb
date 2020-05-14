require_relative '../lib/bot_initializer.rb'

describe BotInitializer do
  let(:msg_init) { BotInitializer.new }
  let(:msg_one) { 'hi' }
  let(:msg_two) { 'ghsgw' }
  let(:result_one) { " Hi samuel!\n Please Select Country of your choise" }
  let(:resul_two) { "Sorry, no results found.\n samuel Please select Country name!" }
  let(:name) { 'samuel' }

  describe '#msg_initialize' do
    it 'calls msg_reader and returns based on the input message' do
      expect(msg_init.msg_initialize(name, msg_one)).to eql(result_one)
    end

    it 'calls msg_reader and returns try again message if no valied message' do
      expect(msg_init.msg_initialize(name, msg_two)).to eql(resul_two)
    end
  end
end
