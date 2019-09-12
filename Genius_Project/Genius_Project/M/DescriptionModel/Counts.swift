//
//  ViewController.swift
//  Genius_Project
//
//  Created by admin on 04/09/2019.
//  Copyright © 2019 RenoyChowdhury. All rights reserved.
//
import Foundation
struct Counts : Codable {
	let media : Int?
	let follows : Int?
	let followed_by : Int?

	enum CodingKeys: String, CodingKey {

		case media = "media"
		case follows = "follows"
		case followed_by = "followed_by"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		media = try values.decodeIfPresent(Int.self, forKey: .media)
		follows = try values.decodeIfPresent(Int.self, forKey: .follows)
		followed_by = try values.decodeIfPresent(Int.self, forKey: .followed_by)
	}

}
