echo_server = fork do
    puts `pwd`
end

puts "pid ??? #{echo_server}"
Process.detach(echo_server)