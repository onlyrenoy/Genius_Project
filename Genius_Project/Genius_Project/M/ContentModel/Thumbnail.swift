

import Foundation
 

public class Thumbnail {
	public var width : Int?
	public var height : Int?
	public var url : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let thumbnail_list = Thumbnail.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Thumbnail Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Thumbnail]
    {
        var models:[Thumbnail] = []
        for item in array
        {
            models.append(Thumbnail(dictionary: item as? NSDictionary ?? ["":""])!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let thumbnail = Thumbnail(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Thumbnail Instance.
*/
	required public init?(dictionary: NSDictionary) {

		width = dictionary["width"] as? Int
		height = dictionary["height"] as? Int
		url = dictionary["url"] as? String
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

		return dictionary
	}

}
