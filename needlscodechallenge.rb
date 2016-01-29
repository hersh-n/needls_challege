


def sort(arr_to_sort, hardstart = nil, hardstop = nil)
	sorted_arr = arr_to_sort.sort_by { |hash| hash['date'] }
	if hardstart
		sorted_arr.each do |hash|
			if hash['date'] < hardstart
				sorted_arr.delete(hash)
			end
		end
	end
	if hardstop
		sorted_arr.each do |hash|
			if hash['date'] > hardstop
				sorted_arr.delete(hash)
			end
		end
	end
	return sorted_arr
end

def running_time (sorted_arr, hardstart = nil, hardstop = nil)
	total_time = 0

	if hardstart
		total_time += sorted_arr.first['date'] - hardstart
	end

	if hardstop
		if sorted_arr.last['newState'] == 'Settings::CAMPAIGN_STATUS_RUNNING'
			total_time += hardstop - sorted_arr.last['date']
		end
	end

	sorted_arr.each_with_index do |hash, index|
		if hash['newState'] == 'Settings::CAMPAIGN_STATUS_RUNNING'
      if index != sorted_arr.length - 1
				total_time += sorted_arr[index+1]['date'] - hash['date']
      elsif hardstop == nil
        total_time += Time.now.to_i - hash['date']
      end
		end
	end
  return total_time
end

statusLog2 = [
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

# StartDate: nil
# StopDate: (Time.new(2015,10,15)).to_i
# Answer: 24 * 60 * 60;





statusLog = [{
		'date' => (Time.now).to_i,
		'oldState' => nil,
		'newState' => 'CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.now + (1*7*24*60*60)).to_i,
		'oldState' => 'CAMPAIGN_STATUS_PAUSED',
		'newState' => 'CAMPAIGN_STATUS_RUNNING'
	},
	{
		'date' => (Time.now + (5*7*24*60*60)).to_i,
		'oldState' => 'CAMPAIGN_STATUS_RUNNING',
		'newState' => 'CAMPAIGN_STATUS_PAUSED'
	},
	{
		'date' => (Time.now + (3*7*24*60*60)).to_i,
		'oldState' => 'CAMPAIGN_STATUS_PAUSED',
		'newState' => 'CAMPAIGN_STATUS_RUNNING'
	}
]

puts running_time((sort(statusLog10,nil,(Time.new(2015,10,15)).to_i)),nil,(Time.new(2015,10,15)).to_i)














