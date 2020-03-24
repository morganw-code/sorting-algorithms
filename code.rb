# just some buffers to hold values
$tmp_value_a = nil
$tmp_value_b = nil
$i = 0
$j = 0

# selection sorting - here we just take each of the lowest values and push them to an array accordingly while popping it off the nums array. 
# TODO: rewrite this at a lower level of abstraction (without using min() helper)
nums = [1, 6, 2, 3, 5, 4]
sorted = []

nums.length().times() {
    $tmp_value_a = nums.min()
    sorted.push($tmp_value_a)
    nums.delete($tmp_value_a)
}
puts("selection sort: #{sorted}")

# bubble sort
=begin
    with bubble sorting we have to go over the entire array looking at each
    element and comparing n (index position) with n+1 each iteration (the adjacent element to the right) 
    and when doing so if value at n < n+1, we swap the elements at their index positions, and 
    if value at n < n+1, both values are left alone and the loop iterates with each new comparison being between
    the next value(s) in the array. this process is repeated during the length of the array.
=end

nums = [1, 2, 3, 5, 4, 10, 20, 50, 11, 6, 7]
# just to see how many times we iterate sorting the array, can test with different nested loop ranges
times_ran = 0
while($i < nums.length - 1)
    times_ran += 1
    while($j < (nums.length - $i) - 1) # just a little optimization, you could run til length - 1 but it costs more iterations
        times_ran += 1
        need_swapped = nums[$j] > nums[$j + 1]
        if(need_swapped)
            $tmp_value_a = nums[$j]
            $tmp_value_b = nums[$j + 1]
            nums[$j] = $tmp_value_b
            nums[$j + 1] = $tmp_value_a
            puts("n: #{$tmp_value_a} > n+1: #{$tmp_value_b}")
        else
            #fall through flow
        end
        $j += 1
    end
    $j = 0;
    $i += 1
end

$i = 0
$j = 0
p("bubble sort: #{nums}")
p times_ran