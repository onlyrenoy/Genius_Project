/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Data : Codable {
	let id : String?
	let user : User?
	let images : Images?
	let created_time : String?
	let caption : Caption?
	let user_has_liked : Bool?
	let likes : Likes?
	let tags : [String]?
	let filter : String?
	let comments : Comments?
	let type : String?
	let link : String?
	let location : String?
	let attribution : String?
	let users_in_photo : [String]?
	let videos : Videos?
	let video_views : Int?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case user = "user"
		case images = "images"
		case created_time = "created_time"
		case caption = "caption"
		case user_has_liked = "user_has_liked"
		case likes = "likes"
		case tags = "tags"
		case filter = "filter"
		case comments = "comments"
		case type = "type"
		case link = "link"
		case location = "location"
		case attribution = "attribution"
		case users_in_photo = "users_in_photo"
		case videos = "videos"
		case video_views = "video_views"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		user = try values.decodeIfPresent(User.self, forKey: .user)
		images = try values.decodeIfPresent(Images.self, forKey: .images)
		created_time = try values.decodeIfPresent(String.self, forKey: .created_time)
		caption = try values.decodeIfPresent(Caption.self, forKey: .caption)
		user_has_liked = try values.decodeIfPresent(Bool.self, forKey: .user_has_liked)
		likes = try values.decodeIfPresent(Likes.self, forKey: .likes)
		tags = try values.decodeIfPresent([String].self, forKey: .tags)
		filter = try values.decodeIfPresent(String.self, forKey: .filter)
		comments = try values.decodeIfPresent(Comments.self, forKey: .comments)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		link = try values.decodeIfPresent(String.self, forKey: .link)
		location = try values.decodeIfPresent(String.self, forKey: .location)
		attribution = try values.decodeIfPresent(String.self, forKey: .attribution)
		users_in_photo = try values.decodeIfPresent([String].self, forKey: .users_in_photo)
		videos = try values.decodeIfPresent(Videos.self, forKey: .videos)
		video_views = try values.decodeIfPresent(Int.self, forKey: .video_views)
	}

}