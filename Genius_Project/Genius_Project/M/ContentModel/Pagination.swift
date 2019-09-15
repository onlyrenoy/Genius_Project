

import Foundation
 

public class Pagination {

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let pagination_list = Pagination.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Pagination Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Pagination]
    {
        var models:[Pagination] = []
        for item in array
        {
            models.append(Pagination(dictionary: item as? NSDictionary ?? ["":""])!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let pagination = Pagination(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Pagination Instance.
*/
	required public init?(dictionary: NSDictionary) {

	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()


		return dictionary
	}

}
