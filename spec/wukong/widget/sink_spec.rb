require 'spec_helper'

describe :sinks, :helpers => true do

  describe Wukong::Sink::Stdout do
    it 'dumps records to $stdout' do
      $stdout.should_receive(:puts).with(mock_record)
      subject.process(mock_record)
    end
  end

  describe Wukong::Sink::Stderr do
    it 'dumps records to $stderr' do
      $stderr.should_receive(:puts).with(mock_record)
      subject.process(mock_record)
    end

  end
end
