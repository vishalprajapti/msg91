#MSG91.in ruby (ruby on rails) code to send SMS
#Coded by Vishal Prajapati
#We use MSG91 API

require "open-uri"
require "net/http" 
require "uri"

#Defining Variables

# AuthKeyReplace replace your API AUTH KEY

AuthKey = 'AuthKeyReplace'

#Mobile Number , multiple will seperated by comma

Mobiles = '910000000000'

#Your Six Alphabet Sender ID for route 4

SenderID = 'VERIFY'

#Message Goes here

Message = URI::encode('hello Vishal')

#Use 4 for Transaction & 1 for Promotional SMS

RouteID = '4'

#Country Code use 0 for international and 91 for India

Country = '0'

#Parsing URL

smsurl = URI.parse("http://api.msg91.com/api/sendhttp.php?authkey" + AuthKey + "&mobiles=" + Mobiles + "&message=" + Message + "&sender=" + SenderID + "&route=" + RouteID + "country" + Country)

#Contacting Server

response = Net::HTTP.get_response(smsurl)

puts "Contacted MSG91 API url";
puts "Server Response" + response
