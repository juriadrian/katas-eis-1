require_relative '../../app/models/Board.rb'

Given(/^a board with dimensions "(\d+)" x "(\d+)"$/) do |x, y|
  @board = Board.new x.to_i, y.to_i
end

Given(/^I create a small ship in position "(\d+):(\d+)"$/) do |x, y|
  @board.put_small_ship_at x.to_i, y.to_i
end

Given(/^I create a large ship in position "(\d+):(\d+)"$/) do |x, y|
  pending # express the regexp above with the code you wish you had
end

Then(/^position "(\d+):(\d+)" is not empty$/) do |x, y|
  (@board.is_empty? x.to_i, y.to_i).should be false
end