def build_array(x,y,z)
	array = [x] + [y] + [z]
end 

def add_to_array (arr, item)
	arr << item
end

p add_to_array(["a","b","c",1,2],3)
p add_to_array(["cat","dog","snake"], "bear")
p add_to_array(["table","chairs","computer"], "fan")


p build_array("one", "two", "three")

build_array("one", "two", "three")

explore = []
    p explore

explore = explore + ["one", "two", "three", "four", "five"]
    p explore

explore.delete_at(2)
    p explore

explore.insert(2, 'three.2')
    p explore

explore.shift
    p explore

answer = explore.include?("o")
     p "#{answer}, o is not in the array."

explore_2 = ["dogs", "cats", "tigers", "lions",]
explore_3 = explore + explore_2
    p explore_3