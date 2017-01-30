//MSG91 SWIFT CODE TO SEND SMS THROUGH API
//DEVELOP BY VISHAL PRAJAPATI , A Fan Made Script

let AuthKey = "YourAuthKey"
let Mobile = "919000000000"
let Message = "HiDev"
let Sender = "VERIFY"


let urlPath: String = "http://api.msg91.com/api/sendhttp.php?authkey=" + AuthKey + "&mobiles=" + Mobile + "&message=" + Message + "&sender" + Sender + "&route=4&country=0"
let url: NSURL = NSURL(string: urlPath)! 
let request1: NSURLRequest = NSURLRequest(URL: url) 

let
response:AutoreleasingUnsafeMutablePointer<NSURLResponse?>=nil 

do{ 
let dataVal = try NSURLConnection.sendSynchronousRequest(request1, returningResponse: response) 
print(response) 
do { 
if let jsonResult = try NSJSONSerialization.JSONObjectWithData(dataVal, options: []) as? NSDictionary { 
printed("Synchronous\(jsonResult)") 
}
 } catch let error as NSError{ 
print(error.localizedDescription) }
print("SMS REQUEST SENT")
