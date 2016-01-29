
require "minitest/autorun"
require "minitest/pride"

require './needlscodechallenge.rb'




class TestStatusLogs < MiniTest::Test

	def statusLog1
		assert_equal(0, running_time(sort(statusLog1)))
	end
end


-----------
statusLog1 = [
	{
		'date' => (Time.new(2015,10,15)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	}
]

StartDate: nil
StopDate: nil
Answer: 0
--------
statusLog2 = [
	{
		'date' => (Time.new(2015,10,15)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	}
]

StartDate: (Time.now + (1*7*24*60*60)).to_i
StopDate: nil
Answer: 0
------------
statusLog3 = [
	{
		'date' => (Time.new(2015,10,15)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,16)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	}
]

StartDate: nil
StopDate: nil
Answer: Time.now - (Time.new(2015,10,16)).to_i;
-------------
statusLog4 = [{
		'date' => (Time.new(2015,10,15)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,16)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	},
	{
		'date' => (Time.new(2015,10,17)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,18)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	}
]

StartDate: nil
StopDate: nil
Answer: Time.now - (Time.new(2015,10,18)).to_i + (24 * 60 * 60]
--------------
statusLog5 = [	{
		'date' => (Time.new(2015,10,15)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,16)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	},
	{
		'date' => (Time.new(2015,10,17)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,18)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	},
	{
		'date' => (Time.new(2015,10,18,12,0,0)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,19)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	}
]

StartDate: nil
StopDate: nil
Answer: Time.now - (Time.new(2015,10,19)).to_i + (24 * 60 * 60 * 1.5]
-------------
statusLog6 = [
	{
		'date' => (Time.new(2015,10,15)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,16)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	},
	{
		'date' => (Time.new(2015,10,17)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,18)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	},
	{
		'date' => (Time.new(2015,10,18,12,0,0)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,19)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	},
	{
		'date' => (Time.new(2015,10,20)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
		'newState' => 'Settings::CAMPAIGN_STATUS_COMPLETE'
	}
]

StartDate: nil
StopDate: nil
Answer: (24 * 60 * 60 * 2.5)
----------
statusLog7 = [
	{
		'date' => (Time.new(2015,10,13)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,14)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	},
]

StartDate: (Time.new(2015,10,15)).to_i;
StopDate: nil
Answer: Time.now - (Time.new(2015,10,15)).to_i;
-----------
statusLog8 = [
	{
		'date' => (Time.new(2015,10,13)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,16)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	}
]

StartDate: (Time.new(2015,10,15)).to_i
StopDate: nil
Answer: Time.now - (Time.new(2015,10,16)).to_i;
----------
statusLog9 = [
	{
		'date' => (Time.new(2015,10,15)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,16)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	},
	{
		'date' => (Time.new(2015,10,17)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,18)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	},
	{
		'date' => (Time.new(2015,10,18,12,0,0)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,19)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	}
]

StartDate: (Time.new(2015,10,17)).to_i
StopDate: nil
Answer: (Time.now - (Time.new(2015,10,19)).to_i) + (12 * 60 * 60)
-----------
statusLog10 = [
	{
		'date' => (Time.new(2015,10,13)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,14)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	}
]

StartDate: nil
StopDate: (Time.new(2015,10,15)).to_i
Answer: 24 * 60 * 60;
--------------
statusLog11 = [
	{
		'date' => (Time.new(2015,10,13)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,14)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	},
	{
		'date' => (Time.new(2015,10,15)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
		'newState' => 'Settings::CAMPAIGN_STATUS_COMPLETE'
	}
]

StartDate: nil
StopDate: (Time.new(2015,10,18)).to_i
Answer: 24 * 60 * 60;
--------------
statusLog12 = [
	{
		'date' => (Time.new(2015,10,15)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.new(2015,10,16)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	},
	{
		'date' => (Time.new(2015,10,17)).to_i,
		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
	}
]

StartDate: nil
StopDate: nil
Answer: Time.now - (Time.new(2015,10,16)).to_i;
-------------------
statusLog13 = [
	{
		'date' => (Time.new(2015,10,15)).to_i,
		'oldState' => nil,
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => $start + 1800,
		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
	}
]

StartDate: nil
StopDate: nil
Answer: 0
-------------






