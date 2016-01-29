
require "minitest/autorun"
require "minitest/pride"

require './needlscodechallenge.rb'




class TestStatusLogs < MiniTest::Test


	def setup
    @statusLog1 = [
      {'date' => (Time.new(2015,10,15)).to_i,
       'oldState' => nil,
       'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
      }]

		@statusLog2 = [
			{
				'date' => (Time.new(2015,10,15)).to_i,
				'oldState' => nil,
				'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
			}
		]

		@statusLog3 = [
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

		@statusLog4 = [{
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

		@statusLog5 = [	{
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

		@statusLog6 = [
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

		@statusLog7 = [
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

		@statusLog8 = [
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

		@statusLog9 = [
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

		@statusLog10 = [
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

		@statusLog11 = [
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

		@statusLog12 = [
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

		@statusLog13 = [
			{
				'date' => (Time.new(2015,10,15)).to_i,
				'oldState' => nil,
				'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
			},
			{
				'date' => 0 + 1800,
				'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
				'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
			}
		]
  end

	def test_statusLog1
		assert_equal(0, running_time(sort(@statusLog1)))
	end

	def test_statusLog2
		assert_equal(0, running_time((sort(@statusLog2, (Time.now + (1*7*24*60*60)).to_i, nil)), (Time.now + (1*7*24*60*60)).to_i, nil))
	end

	def test_statusLog3
		assert_equal((Time.now - (Time.new(2015,10,16))).to_i, running_time(sort(@statusLog3)))
	end

	def test_statusLog4
		assert_equal((Time.now - (Time.new(2015,10,18))).to_i + (24 * 60 * 60), running_time(sort(@statusLog4)))
	end

	def test_statusLog5
		assert_equal((Time.now - (Time.new(2015,10,19))).to_i + (24 * 60 * 60 * 1.5), running_time(sort(@statusLog5)))
	end

	def test_statusLog6
		assert_equal((24 * 60 * 60 * 2.5), running_time(sort(@statusLog6)))
	end

	def test_statusLog7
		assert_equal((Time.now - (Time.new(2015,10,15))).to_i, running_time((sort(@statusLog7, (Time.new(2015,10,15)).to_i, nil)), (Time.new(2015,10,15)).to_i, nil))
	end

	def test_statusLog8
		assert_equal((Time.now - (Time.new(2015,10,16))).to_i, running_time((sort(@statusLog8, (Time.new(2015,10,15)).to_i, nil)), (Time.new(2015,10,15)).to_i, nil))
	end

	def test_statusLog9
		assert_equal(((Time.now - (Time.new(2015,10,19))).to_i) + (12 * 60 * 60), running_time((sort(@statusLog9, (Time.new(2015,10,17)).to_i, nil)), (Time.new(2015,10,17)).to_i, nil))
	end

	def test_statusLog10
		assert_equal(24 * 60 * 60, running_time((sort(@statusLog10, nil, (Time.new(2015,10,15)).to_i)), nil, (Time.new(2015,10,15)).to_i))
	end

	def test_statusLog11
		assert_equal(24 * 60 * 60, running_time((sort(@statusLog11, nil, (Time.new(2015,10,18)).to_i)), nil, (Time.new(2015,10,18)).to_i))
	end

	def test_statusLog12
		assert_equal((Time.now - (Time.new(2015,10,16))).to_i, running_time(sort(@statusLog12)))
	end

	def test_statusLog13
		assert_equal(0, running_time(sort(@statusLog13)))
	end
end


# -----------
# statusLog1 = [
# 	{
# 		'date' => (Time.new(2015,10,15)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	}
# ]

# StartDate: nil
# StopDate: nil
# Answer: 0
# --------
# statusLog2 = [
# 	{
# 		'date' => (Time.new(2015,10,15)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	}
# ]

# StartDate: (Time.now + (1*7*24*60*60)).to_i
# StopDate: nil
# Answer: 0
# ------------
# statusLog3 = [
# 	{
# 		'date' => (Time.new(2015,10,15)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,16)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	}
# ]

# StartDate: nil
# StopDate: nil
# Answer: Time.now - (Time.new(2015,10,16)).to_i;
# -------------
# statusLog4 = [{
# 		'date' => (Time.new(2015,10,15)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,16)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,17)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,18)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	}
# ]

# StartDate: nil
# StopDate: nil
# Answer: Time.now - (Time.new(2015,10,18)).to_i + (24 * 60 * 60]
# --------------
# statusLog5 = [	{
# 		'date' => (Time.new(2015,10,15)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,16)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,17)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,18)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,18,12,0,0)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,19)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	}
# ]

# StartDate: nil
# StopDate: nil
# Answer: Time.now - (Time.new(2015,10,19)).to_i + (24 * 60 * 60 * 1.5]
# -------------
# statusLog6 = [
# 	{
# 		'date' => (Time.new(2015,10,15)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,16)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,17)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,18)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,18,12,0,0)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,19)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,20)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_COMPLETE'
# 	}
# ]

# StartDate: nil
# StopDate: nil
# Answer: (24 * 60 * 60 * 2.5)
# ----------
# statusLog7 = [
# 	{
# 		'date' => (Time.new(2015,10,13)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,14)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	},
# ]

# StartDate: (Time.new(2015,10,15)).to_i;
# StopDate: nil
# Answer: Time.now - (Time.new(2015,10,15)).to_i;
# -----------
# statusLog8 = [
# 	{
# 		'date' => (Time.new(2015,10,13)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,16)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	}
# ]

# StartDate: (Time.new(2015,10,15)).to_i
# StopDate: nil
# Answer: Time.now - (Time.new(2015,10,16)).to_i;
# ----------
# statusLog9 = [
# 	{
# 		'date' => (Time.new(2015,10,15)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,16)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,17)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,18)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,18,12,0,0)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,19)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	}
# ]

# StartDate: (Time.new(2015,10,17)).to_i
# StopDate: nil
# Answer: (Time.now - (Time.new(2015,10,19)).to_i) + (12 * 60 * 60)
# -----------
# statusLog10 = [
# 	{
# 		'date' => (Time.new(2015,10,13)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,14)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	}
# ]

# StartDate: nil
# StopDate: (Time.new(2015,10,15)).to_i
# Answer: 24 * 60 * 60;
# --------------
# statusLog11 = [
# 	{
# 		'date' => (Time.new(2015,10,13)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,14)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,15)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_COMPLETE'
# 	}
# ]

# StartDate: nil
# StopDate: (Time.new(2015,10,18)).to_i
# Answer: 24 * 60 * 60;
# --------------
# statusLog12 = [
# 	{
# 		'date' => (Time.new(2015,10,15)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,16)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	},
# 	{
# 		'date' => (Time.new(2015,10,17)).to_i,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_RUNNING',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_RUNNING'
# 	}
# ]

# StartDate: nil
# StopDate: nil
# Answer: Time.now - (Time.new(2015,10,16)).to_i;
# -------------------
# statusLog13 = [
# 	{
# 		'date' => (Time.new(2015,10,15)).to_i,
# 		'oldState' => nil,
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	},
# 	{
# 		'date' => $start + 1800,
# 		'oldState' => 'Settings::CAMPAIGN_STATUS_PAUSED',
# 		'newState' => 'Settings::CAMPAIGN_STATUS_PAUSED'
# 	}
# ]

# StartDate: nil
# StopDate: nil
# Answer: 0
# -------------






