

import Foundation
 

public class Images {
	public var thumbnail : Thumbnail?
	public var low_resolution : Low_resolution?
	public var standard_resolution : Standard_resolution?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let images_list = Images.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Images Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Images]
    {
        var models:[Images] = []
        for item in array
        {
            models.append(Images(dictionary: item as? NSDictionary ?? ["":""])!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let images = Images(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Images Instance.
*/
	required public init?(dictionary: NSDictionary) {

		if (dictionary["thumbnail"] != nil) { thumbnail = Thumbnail(dictionary: dictionary["thumbnail"] as? NSDictionary ?? ["":""]) }
		if (dictionary["low_resolution"] != nil) { low_resolution = Low_resolution(dictionary: dictionary["low_resolution"] as? NSDictionary ?? ["":""]) }
		if (dictionary["standard_resolution"] != nil) { standard_resolution = Standard_resolution(dictionary: dictionary["standard_resolution"] as? NSDictionary ?? ["":""]) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.thumbnail?.dictionaryRepresentation(), forKey: "thumbnail")
		dictionary.setValue(self.low_resolution?.dictionaryRepresentation(), forKey: "low_resolution")
		dictionary.setValue(self.standard_resolution?.dictionaryRepresentation(), forKey: "standard_resolution")

		return dictionary
	}

}
