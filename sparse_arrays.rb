
n = gets.strip.to_i

strings_array = []
for i in 0..(n-1)
  string = gets.strip.to_s.delete(" ")
  strings_array << string
end


t = gets.strip.to_i
queries_array = []

for i in 0..(t-1)
  query = gets.strip.to_s.delete(" ")
  queries_array << query
end


def sparse_array(strings, queries)
    queries.each do |q|
      if strings.include?(q)
        puts strings.select {|str| str == q }.count
      else
        puts 0
      end
    end
end


sparse_array(strings_array, queries_array)

# a = ["cat", "dog", "cats", "tree", "tree"]
# b = ["cat", "tree", "apple"]
# sparse_array(a, b)
