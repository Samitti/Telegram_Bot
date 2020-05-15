require_relative '../lib/search_engine.rb'

describe MsgProcessor do
  let(:msg_processor) { MsgProcessor.new }
  let(:msg_one) { 'hi' }
  let(:msg_two) { 'ghsgw' }
  let(:msg_three) { 'eritrea' }
  let(:result_one) { " Hi samuel!\n Please select country of your choice." }
  let(:resul_two) { "Sorry, no results found.\n samuel Please select country name!" }
  let(:result_three) { " Hi !\n Please select country of your choice." }
  let(:result_four) { "Sorry, no results found.\n  Please select country name!" }
  let(:result_five) { msg_processor.msg_validator(msg_three) }
  let(:name) { 'samuel' }

  describe '#msg_reader' do
    it 'calls the greeter if the message is hi' do
      expect(msg_processor.msg_reader(name, msg_one)).to eql(result_one)
    end

    it 'calls msg_validator if the message is not hi' do
      expect(msg_processor.msg_reader(name, msg_two)).to eql(resul_two)
    end
  end

  describe '#greeter' do
    it 'returs greeting message with name' do
      expect(msg_processor.greeter).to eql(result_three)
    end
  end

  describe '#msg_validator' do
    it 'calls find_nation and if valid message returns the result' do
      expect(msg_processor.msg_validator(msg_three)).to eql(result_five)
    end

    it 'returs error message if message is not valid' do
      expect(msg_processor.msg_validator(msg_two)).to eql(result_four)
    end
  end
end
