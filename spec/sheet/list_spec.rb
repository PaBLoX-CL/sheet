
require 'spec_helper'

describe Sheet::List do

  it 'calls system ls' do
    cmd = "ls -1 #{Sheet.sheets_dir}"
    Sheet.should_receive(:exec).with(cmd, true)

    Sheet::List.new.list
  end

end
