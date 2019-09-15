

import Foundation
 

public class Low_bandwidth {
	public var width : Int?
	public var height : Int?
	public var url : String?
	public var id : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let low_bandwidth_list = Low_bandwidth.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Low_bandwidth Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Low_bandwidth]
    {
        var models:[Low_bandwidth] = []
        for item in array
        {
            models.append(Low_bandwidth(dictionary: item as? NSDictionary ?? ["":""])!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let low_bandwidth = Low_bandwidth(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Low_bandwidth Instance.
*/
	required public init?(dictionary: NSDictionary) {

		width = dictionary["width"] as? Int
		height = dictionary["height"] as? Int
		url = dictionary["url"] as? String
		id = dictionary["id"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.width, forKey: "width")
		dictionary.setValue(self.height, forKey: "height")
		dictionary.setValue(self.url, forKey: "url")
		dictionary.setValue(self.id, forKey: "id")

		return dictionary
	}

}
