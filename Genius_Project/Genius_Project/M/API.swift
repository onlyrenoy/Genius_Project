//
//  API.swift
//  Genius_Project
//
//  Created by admin on 07/09/2019.
//  Copyright © 2019 RenoyChowdhury. All rights reserved.
//

import Foundation

struct API {
    static let INSTAGRAM_AUTHURL = "https://api.instagram.com/oauth/authorize/"
    static let INSTAGRAM_CLIENT_ID = "2a9897bcff4b459ea0a47680b9032756"
    static let INSTAGRAM_CLIENTSERCRET = "df03b16577954349b6ac515efec7a96d"
    static let INSTAGRAM_REDIRECT_URI = "https://localhost"
    static let INSTAGRAM_ACCESS_TOKEN = "access"
    static let INSTAGRAM_SCOPE = "follower_list"
    
    static let IG_LOGGED = "https://api.instagram.com/v1/users/self/"
    
    static let BASIC_INFO = "https://api.instagram.com/v1/users/self/?access_token="
    static let CONTENT_INFO = "https://api.instagram.com/v1/users/self/media/recent/?access_token="
    
    
}
