##
# Queue test

assert('Object.const_defined? :Queue') do
  Object.const_defined?(:Queue)
end

assert('Queue#empty? ') do
  q = Queue.new
  assert_equal q.empty?, true
end

assert('Queue#push and #shift') do
  q = Queue.new
  q.push 1
  q.push 2
  q.push 3
  assert_equal q.shift, 1
  assert_equal q.shift, 2
  assert_equal q.shift, 3
end

assert('Queue#clear') do
  q = Queue.new
  q.push 1
  q.push 2
  q.push 3
  q.clear
  q.empty?
end


