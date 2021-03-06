#############
# mewtation pair probabilites - 4  x 4 = 16 pairs:
#   (p', h1', h2', h3') x (p", h1", h2", h3")
#                       =
#     (p', p"), (p', h1"), (p', h2"), (p', h3")
#     (h1',p"), (h1',h1"), (h1',h2"), (h1',h3")
#     (h2',p"), (h2',h1"), (h2',h2"), (h3',h3")
#     (h3',p"), (h3',h1"), (h3',h2"), (h3',h3")

p_p   = 0.75 * 0.75
p_h1  = 0.75 * 0.1875
p_h2  = 0.75 * 0.046875
p_h3  = 0.75 * 0.015625
total = p_p + p_h1 + p_h2 + p_h3
puts "p_p=#{p_p}, p_h1=#{p_h1}, p_h2=#{p_h2}, p_h3=#{p_h3}, total=#{total}"
#=> p_p=0.5625, p_h1=0.140625, p_h2=0.03515625, p_h3=0.01171875, total=0.75

h1_p  = 0.1875 * 0.75
h1_h1 = 0.1875 * 0.1875
h1_h2 = 0.1875 * 0.046875
h1_h3 = 0.1875 * 0.015625
total = h1_p + h1_h1 + h1_h2 + h1_h3
puts "h1_p=#{h1_p}, h1_h1=#{h1_h1}, h1_h2=#{h1_h2}, h1_h3=#{h1_h3}, total=#{total}"
#=> h1_p=0.140625, h1_h1=0.03515625, h1_h2=0.0087890625, h1_h3=0.0029296875, total=0.1875

h2_p  = 0.046875 * 0.75
h2_h1 = 0.046875 * 0.1875
h2_h2 = 0.046875 * 0.046875
h2_h3 = 0.046875 * 0.015625
total = h2_p + h2_h1 + h2_h2 + h2_h3
puts "h2_p=#{h2_p}, h2_h1=#{h2_h1}, h2_h2=#{h2_h2}, h2_h3=#{h2_h3}, total=#{total}"
#=> h2_p=0.03515625, h2_h1=0.0087890625, h2_h2=0.002197265625, h2_h3=0.000732421875, total=0.046875

h3_p  = 0.015625 * 0.75
h3_h1 = 0.015625 * 0.1875
h3_h2 = 0.015625 * 0.046875
h3_h3 = 0.015625 * 0.015625
total = h3_p + h3_h1 + h3_h2 + h3_h3
puts "h3_p=#{h3_p}, h3_h1=#{h3_h1}, h3_h2=#{h3_h2}, h3_h3=#{h3_h3}, total=#{total}"
#=> h3_p=0.01171875, h3_h1=0.0029296875, h3_h2=0.000732421875, h3_h3=0.000244140625, total=0.015625


total = p_p  + p_h1  + p_h2  + p_h3  +
        h1_p + h1_h1 + h1_h2 + h1_h3 +
        h2_p + h2_h1 + h2_h2 + h2_h3 +
        h3_p + h3_h1 + h3_h2 + h3_h3
puts "total=#{total}"
#=> total=1.0


################
## or
p  = 0.75
h1 = 0.1875
h2 = 0.046875
h3 = 0.015625

p_p   = p * p
p_h1  = p * h1
p_h2  = p * h2
p_h3  = p * h3
puts "p_p=#{p_p}, p_h1=#{p_h1}, p_h2=#{p_h2}, p_h3=#{p_h3}"
#=> p_p=0.5625, p_h1=0.140625, p_h2=0.03515625, p_h3=0.01171875

h1_p  = h1 * p
h1_h1 = h1 * h1
h1_h2 = h1 * h2
h1_h3 = h1 * h3
puts "h1_p=#{h1_p}, h1_h1=#{h1_h1}, h1_h2=#{h1_h2}, h1_h3=#{h1_h3}"
#=> h1_p=0.140625, h1_h1=0.03515625, h1_h2=0.0087890625, h1_h3=0.0029296875

h2_p  = h2 * p
h2_h1 = h2 * h1
h2_h2 = h2 * h2
h2_h3 = h2 * h3
puts "h2_p=#{h2_p}, h2_h1=#{h2_h1}, h2_h2=#{h2_h2}, h2_h3=#{h2_h3}"
#=> h2_p=0.03515625, h2_h1=0.0087890625, h2_h2=0.002197265625, h2_h3=0.000732421875

h3_p  = h3 * p
h3_h1 = h3 * h1
h3_h2 = h3 * h2
h3_h3 = h3 * h3
puts "h3_p=#{h3_p}, h3_h1=#{h3_h1}, h3_h2=#{h3_h2}, h3_h3=#{h3_h3}"
#=> h3_p=0.01171875, h3_h1=0.0029296875, h3_h2=0.000732421875, h3_h3=0.000244140625

total = p_p  + p_h1  + p_h2  + p_h3  +
        h1_p + h1_h1 + h1_h2 + h1_h3 +
        h2_p + h2_h1 + h2_h2 + h2_h3 +
        h3_p + h3_h1 + h3_h2 + h3_h3
puts "total=#{total}"
#=> total=1.0


puts p_p_i = 0.75 * 0.75 * 0.25      # i) mutation (25%)
#=> 0.140625
puts p_a = p_p_i / 2
#=> 0.0703125
puts p_b = p_p_i / 2
#=> 0.0703125
puts p_p_ii = 0.75 * 0.75 * 0.75     # ii) no mutation (75%)
#=> 0.421875
puts p_p_i + p_p_ii
#=> 0.5625

puts p_h1_i = 0.75 * 0.1875 * 0.25   # i) mutation (25%)
#=> 0.03515625
puts p_a = p_h1_i / 2
#=> 0.017578125
puts h1_b = p_h1_i / 2
#=> 0.017578125
puts p_h1_ii = 0.75 * 0.1875 * 0.75  # ii) no mutation (75%)
#=> 0.10546875
puts p_h1_i + p_h1_ii
#=> 0.140625



puts p_a  = p_p/2 + p_h1/2 + p_h2/2 + p_h3/2
#=> 0.375
puts p_b  = p_p/2 + h1_p/2 + h2_p/2 + h3_p/2
#=> 0.375
puts h1_a = h1_p/2 + h1_h1/2 + h1_h2/2 + h1_h3/2
#=> 0.09375
puts h1_b = p_h1/2 + h1_h1/2 + h2_h1/2 + h3_h1/2
#=> 0.09375
puts h2_a = h2_p/2 + h2_h1/2 + h2_h2/2 + h2_h3/2
#=> 0.0234375
puts h2_b = p_h2/2 + h1_h2/2 + h2_h2/2 + h3_h2/2
#=> 0.0234375
puts h3_a = h3_p/2 + h3_h1/2 + h3_h2/2 + h3_h3/2
#=> 0.0078125
puts h3_b = p_h3/2 + h1_h3/2 + h2_h3/2 + h3_h3/2
#=> 0.0078125

puts p_a + p_b + h1_a + h1_b + h2_a + h2_b + h3_a + h3_b
#=> 1.0
