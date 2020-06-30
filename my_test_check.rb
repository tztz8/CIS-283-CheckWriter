############################################################
#
#  Name:        Timbre Freeman
#  Assignment:  CheckWriter
#  Date:        02/20/2020
#  Class:       CIS 283
#  Description: Class to help make checkes
#
############################################################

require '.\checkwriter.rb'

$debug = true

print "Test using 1.01: "
puts "#{1.01.to_check_string}"
puts ""
print "Test using 18.18: "
puts "#{18.18.to_check_string}"
puts ""
print "Test using 112.62: "
puts "#{112.62.to_check_string}"
puts ""
print "Test using 1000.91"
puts "#{1000.91.to_check_string}"
puts ""
print "Test using 876543.21: "
puts "#{876543.21.to_check_string}"
puts ""
print "Test using 900,000.00: "
puts "#{900000.00.to_check_string}"
puts ""
print "Test using 900,001.00: "
puts "#{900001.00.to_check_string}"
puts ""
print "Test using 10,234.44: "
puts "#{10234.44.to_check_string}"
puts "output shud look like: ten thousand two hundred thirty four dollars and forty four cents"