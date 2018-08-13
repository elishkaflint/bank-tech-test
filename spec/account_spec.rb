require 'account'

describe Account do

  let(:subject) { Account.new }

  describe '#initialize' do
    it 'initializes with an empty transaction array' do
      expect(subject.transactions).to eq []
    end
  end

end
