def sort(arr_to_sort, hardstart = nil, hardstop = nil)
	sorted_arr = arr_to_sort.sort_by { |hash| hash['date'] }
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
		if hardstart > sorted_arr.last['date']
			if sorted_arr.last['newState'] == 'Settings::CAMPAIGN_STATUS_RUNNING'
				total_time += Time.now.to_i - hardstart
				return total_time
			else
				total_time = 0
				return total_time
			end
		end
			sorted_arr.each do |hash|
				if hash['date'] < hardstart
					sorted_arr.delete(hash)
				end
			end
			puts sorted_arr
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



















