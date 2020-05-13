require_relative '../lib/search_engine.rb'

describe SearchEngine do
    let(:init_engine) {SearchEngine.new}
    let(:nation) {"eritrea"}
    let(:wrong_nation) {"keritrea"}
    let(:search_result) {init_engine.find_nation(nation)}
    let(:search_result_two) {""}
    describe '#find_nation' do
        it "searches for the given nation if found returns details" do
            expect(init_engine.find_nation(nation)).to eql(search_result)
        end

        it "searches for the given nation if not found returns empty" do
            expect(init_engine.find_nation(wrong_nation)).to eql(search_result_two)
        end
    end
end