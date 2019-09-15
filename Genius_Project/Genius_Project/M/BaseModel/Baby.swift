//
//  Baby.swift
//  Genius_Project
//
//  Created by admin on 15/09/2019.
//  Copyright © 2019 RenoyChowdhury. All rights reserved.
//

import Foundation

class Baby {
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
    
    init(id : String?,username : String?,profile_picture : String?,full_name : String?,bio : String?,website : String?,
is_business : Bool?,
counts : Counts?,
user : User?,
images : Images?,
created_time : String?,
caption : Caption?,
user_has_liked : Bool?,
likes : Likes?,
tags : [String]?,
filter : String?,
comments : Comments?,
type : String?,
link : String?,
location : String?,
attribution : String?,
users_in_photo : [String]?,
videos : Videos?,
video_views : Int?) {

        self.id = id
        self.username = username
        self.profile_picture = profile_picture
        self.full_name = full_name
        self.bio = bio
        self.website = website
        self.is_business = is_business
        self.counts = counts
        self.user = user
        self.images = images
        self.created_time = created_time
        self.caption = caption
        self.user_has_liked = user_has_liked
        self.likes = likes
        self.tags = tags
        self.filter = filter
        self.comments = comments
        self.type = type
        self.link = link
        self.location = location
        self.attribution = attribution
        self.users_in_photo = users_in_photo
        self.videos = videos
        self.video_views = video_views
}
}
