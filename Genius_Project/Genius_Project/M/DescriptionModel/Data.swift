//
//  ViewController.swift
//  Genius_Project
//
//  Created by admin on 04/09/2019.
//  Copyright © 2019 RenoyChowdhury. All rights reserved.
//

import Foundation
struct Data : Codable {
	let id : String?
	let username : String?
	let profile_picture : String?
	let full_name : String?
	let bio : String?
	let website : String?
	let is_business : Bool?
	let counts : Counts?
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
		case username = "username"
		case profile_picture = "profile_picture"
		case full_name = "full_name"
		case bio = "bio"
		case website = "website"
		case is_business = "is_business"
		case counts = "counts"

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
		username = try values.decodeIfPresent(String.self, forKey: .username)
		profile_picture = try values.decodeIfPresent(String.self, forKey: .profile_picture)
		full_name = try values.decodeIfPresent(String.self, forKey: .full_name)
		bio = try values.decodeIfPresent(String.self, forKey: .bio)
		website = try values.decodeIfPresent(String.self, forKey: .website)
		is_business = try values.decodeIfPresent(Bool.self, forKey: .is_business)
		counts = try values.decodeIfPresent(Counts.self, forKey: .counts)
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
