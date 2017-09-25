require 'rails_helper'

RSpec.describe User, type: :model do

    context "Validations" do  
        it { should validate_presence_of(:username) }
        it { should validate_presence_of(:password) }
        it { should validate_uniqueness_of(:username) }
    end

    context "Relationships" do  
        it { should have_many(:reviews).dependent(:destroy) }

    end
    
end