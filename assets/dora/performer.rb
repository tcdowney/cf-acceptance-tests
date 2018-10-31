class Performer
  def perform
    File.open('/tmp/dora.out', 'a') do |f|
      f.puts "Hey we're performing!!"
    end
  end
end
