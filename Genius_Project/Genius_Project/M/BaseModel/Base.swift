//
//  ViewController.swift
//  Genius_Project
//
//  Created by admin on 04/09/2019.
//  Copyright © 2019 RenoyChowdhury. All rights reserved.
//

import Foundation
struct Base : Codable {
    let pagination: Pagination?
	let data : Data?
	let meta : Meta?

	enum CodingKeys: String, CodingKey {
		case data = "data"
		case meta = "meta"
        case pagination = "pagination"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		data = try values.decodeIfPresent(Data.self, forKey: .data)
		meta = try values.decodeIfPresent(Meta.self, forKey: .meta)
        pagination = try values.decodeIfPresent(Pagination.self, forKey: .pagination)
	}

}
