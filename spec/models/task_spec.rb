require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'sample test' do
    let(:task) { create(:task) }
    it { expect(task).to eq(task) }
  end
end
