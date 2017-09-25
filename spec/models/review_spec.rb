require 'rails_helper'

RSpec.describe Review, type: :model do

    context "Validations" do  
        it { should validate_presence_of(:content) }
        it { should validate_presence_of(:rating) }
        it { should validate_inclusion_of(:rating).in_range(0..5) }
    end

    context "Relationships" do  
        it { should belong_to(:reviewer) }
        it { should belong_to(:product) }
    end
end
