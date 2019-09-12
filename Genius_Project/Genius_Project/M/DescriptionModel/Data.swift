//
//  ViewController.swift
//  Genius_Project
//
//  Created by admin on 04/09/2019.
//  Copyright © 2019 RenoyChowdhury. All rights reserved.
//

import Foundation
struct BaseData : Codable {
	let id : String?
	let username : String?
	let profile_picture : String?
	let full_name : String?
	let bio : String?
	let website : String?
	let is_business : Bool?
	let counts : Counts?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case username = "username"
		case profile_picture = "profile_picture"
		case full_name = "full_name"
		case bio = "bio"
		case website = "website"
		case is_business = "is_business"
		case counts = "counts"
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
	}

}
