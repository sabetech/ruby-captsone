require 'spec_helper'

describe Book do

    before :each do
      @book_good = Book.new '2022-05-01', false, 'Macmillan', 'good'
      @book_bad = Book.new '2011-05-01', true, 'Macmillan', 'bad'
    end

    describe 'Tests for the can_be_archived' do
        it 'Should return false on can_be_archived' do
            expect(@book_good.can_be_archived?).to eq(false)
        end
        
        it 'Should return true for book can be archived' do            
            expect(@book_bad.can_be_archived?).to eq(true)
        end
    end
  end