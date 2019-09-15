

import Foundation
 

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
            models.append(Videos(dictionary: item as? NSDictionary ?? ["":""])!)
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

		if (dictionary["standard_resolution"] != nil) { standard_resolution = Standard_resolution(dictionary: dictionary["standard_resolution"] as? NSDictionary ?? ["":""]) }
		if (dictionary["low_resolution"] != nil) { low_resolution = Low_resolution(dictionary: dictionary["low_resolution"] as? NSDictionary ?? ["":""]) }
		if (dictionary["low_bandwidth"] != nil) { low_bandwidth = Low_bandwidth(dictionary: dictionary["low_bandwidth"] as? NSDictionary ?? ["":""]) }
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
