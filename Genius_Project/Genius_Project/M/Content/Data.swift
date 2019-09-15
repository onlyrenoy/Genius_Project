/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Data {
	public var id : String?
	public var user : User?
	public var images : Images?
	public var created_time : String?
	public var caption : Caption?
	public var user_has_liked : Bool?
	public var likes : Likes?
	public var tags : Array<String>?
	public var filter : String?
	public var comments : Comments?
	public var type : String?
	public var link : String?
	public var location : String?
	public var attribution : String?
	public var users_in_photo : Array<String>?
	public var videos : Videos?
	public var video_views : Int?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let data_list = Data.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Data Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Data]
    {
        var models:[Data] = []
        for item in array
        {
            models.append(Data(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let data = Data(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Data Instance.
*/
	required public init?(dictionary: NSDictionary) {

		id = dictionary["id"] as? String
		if (dictionary["user"] != nil) { user = User(dictionary: dictionary["user"] as! NSDictionary) }
		if (dictionary["images"] != nil) { images = Images(dictionary: dictionary["images"] as! NSDictionary) }
		created_time = dictionary["created_time"] as? String
		if (dictionary["caption"] != nil) { caption = Caption(dictionary: dictionary["caption"] as! NSDictionary) }
		user_has_liked = dictionary["user_has_liked"] as? Bool
		if (dictionary["likes"] != nil) { likes = Likes(dictionary: dictionary["likes"] as! NSDictionary) }
		if (dictionary["tags"] != nil) { tags = Tags.modelsFromDictionaryArray(dictionary["tags"] as! NSArray) }
		filter = dictionary["filter"] as? String
		if (dictionary["comments"] != nil) { comments = Comments(dictionary: dictionary["comments"] as! NSDictionary) }
		type = dictionary["type"] as? String
		link = dictionary["link"] as? String
		location = dictionary["location"] as? String
		attribution = dictionary["attribution"] as? String
		if (dictionary["users_in_photo"] != nil) { users_in_photo = Users_in_photo.modelsFromDictionaryArray(dictionary["users_in_photo"] as! NSArray) }
		if (dictionary["videos"] != nil) { videos = Videos(dictionary: dictionary["videos"] as! NSDictionary) }
		video_views = dictionary["video_views"] as? Int
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.user?.dictionaryRepresentation(), forKey: "user")
		dictionary.setValue(self.images?.dictionaryRepresentation(), forKey: "images")
		dictionary.setValue(self.created_time, forKey: "created_time")
		dictionary.setValue(self.caption?.dictionaryRepresentation(), forKey: "caption")
		dictionary.setValue(self.user_has_liked, forKey: "user_has_liked")
		dictionary.setValue(self.likes?.dictionaryRepresentation(), forKey: "likes")
		dictionary.setValue(self.filter, forKey: "filter")
		dictionary.setValue(self.comments?.dictionaryRepresentation(), forKey: "comments")
		dictionary.setValue(self.type, forKey: "type")
		dictionary.setValue(self.link, forKey: "link")
		dictionary.setValue(self.location, forKey: "location")
		dictionary.setValue(self.attribution, forKey: "attribution")
		dictionary.setValue(self.videos?.dictionaryRepresentation(), forKey: "videos")
		dictionary.setValue(self.video_views, forKey: "video_views")

		return dictionary
	}

}