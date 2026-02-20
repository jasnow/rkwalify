require 'spec_helper'
require 'aruba/rspec'

RSpec.describe 'my_cli', type: :aruba do
  it 'runs with --help' do
    run_command('my_cli --help')
    expect(last_command_started).to be_successfully_executed
    expect(last_command_started).to have_output(/Usage:/)
  end
end
