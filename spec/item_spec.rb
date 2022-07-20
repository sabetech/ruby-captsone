require 'spec_helper'

describe Item do

    before :each do
      @item1 = Item.new '2022-05-01', false
    end

    describe 'Tests for the can_be_archived' do
        @oldItem = Item.new('2011-05-01', false)
    
        it 'Should return false if published_date is younger than 10 years' do
            expect(@item.can_be_archived?).to eq(false)
        end

        it 'Should return true if published_date is older than 10 years' do
            expect(@oldItem.can_be_archived?).to eq(false)
        end

    end

    describe 'Tests for move_to_archive' do
        @oldItem = Item.new('2011-05-01', false)

        it 'Should let archive property to remain false' do
            @item1.move_to_archive()

            expect(@item.archived).to eq(false) 
        end
        
        it 'Should set the archive property to true' do        
            @oldItem.move_to_archive()

            expect(@oldItem.archived).to eq(true)
        end
    end
  end