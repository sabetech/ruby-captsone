require 'spec_helper'

describe Label do

    before :each do
        @sample_item = Item.new('2011-05-01', false)
        @label = Label.new(@sample_item)
    end

    describe 'Tests for the can_be_archived' do
        @sample_item = Item.new('2014-05-04', true)
        @label.add_item(@sample_item)
    end
end