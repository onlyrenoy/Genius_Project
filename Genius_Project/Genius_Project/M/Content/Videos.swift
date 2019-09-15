/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Videos {
	public var standard_resolution : Standard_resolution?
	public var low_resolution : Low_resolution?
	public var low_bandwidth : Low_bandwidth?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let videos_list = Videos.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Videos Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Videos]
    {
        var models:[Videos] = []
        for item in array
        {
            models.append(Videos(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let videos = Videos(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Videos Instance.
*/
	required public init?(dictionary: NSDictionary) {

		if (dictionary["standard_resolution"] != nil) { standard_resolution = Standard_resolution(dictionary: dictionary["standard_resolution"] as! NSDictionary) }
		if (dictionary["low_resolution"] != nil) { low_resolution = Low_resolution(dictionary: dictionary["low_resolution"] as! NSDictionary) }
		if (dictionary["low_bandwidth"] != nil) { low_bandwidth = Low_bandwidth(dictionary: dictionary["low_bandwidth"] as! NSDictionary) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.standard_resolution?.dictionaryRepresentation(), forKey: "standard_resolution")
		dictionary.setValue(self.low_resolution?.dictionaryRepresentation(), forKey: "low_resolution")
		dictionary.setValue(self.low_bandwidth?.dictionaryRepresentation(), forKey: "low_bandwidth")

		return dictionary
	}

}