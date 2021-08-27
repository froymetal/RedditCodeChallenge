//
//  RedditFeedResponse.swift
//  CodeChallenge
//
//  Created by Froy on 8/27/21.
//

import Foundation

// MARK: - RedditFeedResponse
struct RedditFeedResponse: Codable {
//    let kind: String
    let data: RedditFeedData
}

// MARK: - TemperaturesData
struct RedditFeedData: Codable {
    let after: String
    let dist: Int
    let modhash: String
    let children: [Child]

    enum CodingKeys: String, CodingKey {
        case after, dist, modhash
        case children
    }
}

// MARK: - Child
struct Child: Codable {
    let kind: Kind
    let data: ChildData
}

// MARK: - ChildData
struct ChildData: Codable {
//    let subreddit, selftext, authorFullname: String
//    let saved: Bool
//    let gilded: Int
//    let clicked: Bool
//    let title: String
//    let linkFlairRichtext: [FlairRichtext]
//    let subredditNamePrefixed: String
//    let hidden: Bool
//    let pwls: Int
//    let linkFlairCSSClass: String?
//    let downs: Int
//    let thumbnailHeight: Int?
//    let topAwardedType: String?
//    let hideScore: Bool
//    let name: String
//    let quarantine: Bool
//    let linkFlairTextColor: FlairTextColor
//    let upvoteRatio: Double
//    let authorFlairBackgroundColor: String?
//    let subredditType: SubredditType
//    let ups, totalAwardsReceived: Int
//    let mediaEmbed: MediaEmbed
//    let thumbnailWidth: Int?
//    let authorFlairTemplateID: String?
//    let isOriginalContent: Bool
//    let secureMedia: Media?
//    let isRedditMediaDomain, isMeta: Bool
//    let secureMediaEmbed: MediaEmbed
//    let linkFlairText: String?
//    let canModPost: Bool
//    let score: Int
//    let isCreatedFromAdsUI, authorPremium: Bool
//    let thumbnail: String
//    let edited: Edited
//    let authorFlairCSSClass: String?
//    let authorFlairRichtext: [FlairRichtext]
//    let gildings: Gildings
//    let postHint: PostHint?
//    let isSelf: Bool
//    let created: Int
//    let linkFlairType: FlairType
//    let wls: Int
//    let authorFlairType: FlairType
//    let domain: String
//    let allowLiveComments: Bool
//    let selftextHTML: String?
//    let suggestedSort: String?
//    let urlOverriddenByDest: String?
//    let archived, noFollow, isCrosspostable, pinned: Bool
//    let over18: Bool
//    let preview: Preview?
//    let allAwardings: [AllAwarding]
//    let mediaOnly, canGild, spoiler, locked: Bool
//    let authorFlairText: String?
//    let visited: Bool
//    let distinguished: String?
//    let subredditID: String
//    let authorIsBlocked: Bool
//    let linkFlairBackgroundColor, id: String
//    let isRobotIndexable: Bool
//    let author: String
//    let numComments: Int
//    let sendReplies: Bool
//    let whitelistStatus: WhitelistStatus
//    let contestMode: Bool
//    let authorPatreonFlair: Bool
//    let authorFlairTextColor: FlairTextColor?
//    let permalink: String
//    let parentWhitelistStatus: WhitelistStatus
//    let stickied: Bool
//    let url: String
//    let subredditSubscribers, createdUTC, numCrossposts: Int
//    let media: Media?
//    let isVideo: Bool
//    let linkFlairTemplateID: String?
//    let isGallery: Bool?
//    let mediaMetadata: [String: MediaMetadatum]?
//    let galleryData: GalleryData?

//    enum CodingKeys: String, CodingKey {
//        case approvedAtUTC = "approved_at_utc"
//        case subreddit, selftext
//        case authorFullname = "author_fullname"
//        case saved
//        case gilded, clicked, title
//        case linkFlairRichtext = "link_flair_richtext"
//        case subredditNamePrefixed = "subreddit_name_prefixed"
//        case hidden, pwls
//        case linkFlairCSSClass = "link_flair_css_class"
//        case downs
//        case thumbnailHeight = "thumbnail_height"
//        case topAwardedType = "top_awarded_type"
//        case hideScore = "hide_score"
//        case name, quarantine
//        case linkFlairTextColor = "link_flair_text_color"
//        case upvoteRatio = "upvote_ratio"
//        case authorFlairBackgroundColor = "author_flair_background_color"
//        case subredditType = "subreddit_type"
//        case ups
//        case totalAwardsReceived = "total_awards_received"
//        case mediaEmbed = "media_embed"
//        case thumbnailWidth = "thumbnail_width"
//        case authorFlairTemplateID = "author_flair_template_id"
//        case isOriginalContent = "is_original_content"
//        case userReports = "user_reports"
//        case secureMedia = "secure_media"
//        case isRedditMediaDomain = "is_reddit_media_domain"
//        case isMeta = "is_meta"
//        case secureMediaEmbed = "secure_media_embed"
//        case linkFlairText = "link_flair_text"
//        case canModPost = "can_mod_post"
//        case score
//        case isCreatedFromAdsUI = "is_created_from_ads_ui"
//        case authorPremium = "author_premium"
//        case thumbnail, edited
//        case authorFlairCSSClass = "author_flair_css_class"
//        case authorFlairRichtext = "author_flair_richtext"
//        case gildings
//        case postHint = "post_hint"
//        case isSelf = "is_self"
//        case created
//        case linkFlairType = "link_flair_type"
//        case wls
//        case authorFlairType = "author_flair_type"
//        case domain
//        case allowLiveComments = "allow_live_comments"
//        case selftextHTML = "selftext_html"
//        case suggestedSort = "suggested_sort"
//        case urlOverriddenByDest = "url_overridden_by_dest"
//        case archived
//        case noFollow = "no_follow"
//        case isCrosspostable = "is_crosspostable"
//        case pinned
//        case over18 = "over_18"
//        case preview
//        case allAwardings = "all_awardings"
//        case awarders
//        case mediaOnly = "media_only"
//        case canGild = "can_gild"
//        case spoiler, locked
//        case authorFlairText = "author_flair_text"
//        case treatmentTags = "treatment_tags"
//        case visited
//        case removedBy = "removed_by"
//        case distinguished
//        case subredditID = "subreddit_id"
//        case authorIsBlocked = "author_is_blocked"
//        case linkFlairBackgroundColor = "link_flair_background_color"
//        case id
//        case isRobotIndexable = "is_robot_indexable"
//        case author
//        case numComments = "num_comments"
//        case sendReplies = "send_replies"
//        case whitelistStatus = "whitelist_status"
//        case contestMode = "contest_mode"
//        case modReports = "mod_reports"
//        case authorPatreonFlair = "author_patreon_flair"
//        case authorFlairTextColor = "author_flair_text_color"
//        case permalink
//        case parentWhitelistStatus = "parent_whitelist_status"
//        case stickied, url
//        case subredditSubscribers = "subreddit_subscribers"
//        case createdUTC = "created_utc"
//        case numCrossposts = "num_crossposts"
//        case media
//        case isVideo = "is_video"
//        case linkFlairTemplateID = "link_flair_template_id"
//        case isGallery = "is_gallery"
//        case mediaMetadata = "media_metadata"
//        case galleryData = "gallery_data"
//    }
}

// MARK: - AllAwarding
struct AllAwarding: Codable {
    let giverCoinReward: Int?
    let subredditID: String?
    let isNew: Bool
    let daysOfDripExtension, coinPrice: Int
    let id: String
    let pennyDonate: Int?
    let awardSubType: AwardSubType
    let coinReward: Int
    let iconURL: String
    let daysOfPremium: Int
    let tiersByRequiredAwardings: [String: TiersByRequiredAwarding]?
    let resizedIcons: [ResizedIcon]
    let iconWidth, staticIconWidth: Int
    let isEnabled: Bool
    let awardingsRequiredToGrantBenefits: Int?
    let allAwardingDescription: String
    let subredditCoinReward, count, staticIconHeight: Int
    let name: String
    let resizedStaticIcons: [ResizedIcon]
    let iconFormat: Format?
    let iconHeight: Int
    let pennyPrice: Int?
    let awardType: AwardType
    let staticIconURL: String

    enum CodingKeys: String, CodingKey {
        case giverCoinReward = "giver_coin_reward"
        case subredditID = "subreddit_id"
        case isNew = "is_new"
        case daysOfDripExtension = "days_of_drip_extension"
        case coinPrice = "coin_price"
        case id
        case pennyDonate = "penny_donate"
        case awardSubType = "award_sub_type"
        case coinReward = "coin_reward"
        case iconURL = "icon_url"
        case daysOfPremium = "days_of_premium"
        case tiersByRequiredAwardings = "tiers_by_required_awardings"
        case resizedIcons = "resized_icons"
        case iconWidth = "icon_width"
        case staticIconWidth = "static_icon_width"
        case isEnabled = "is_enabled"
        case awardingsRequiredToGrantBenefits = "awardings_required_to_grant_benefits"
        case allAwardingDescription = "description"
        case subredditCoinReward = "subreddit_coin_reward"
        case count
        case staticIconHeight = "static_icon_height"
        case name
        case resizedStaticIcons = "resized_static_icons"
        case iconFormat = "icon_format"
        case iconHeight = "icon_height"
        case pennyPrice = "penny_price"
        case awardType = "award_type"
        case staticIconURL = "static_icon_url"
    }
}

enum AwardSubType: String, Codable {
    case appreciation = "APPRECIATION"
    case community = "COMMUNITY"
    case global = "GLOBAL"
    case group = "GROUP"
    case premium = "PREMIUM"
}

enum AwardType: String, Codable {
    case community = "community"
    case global = "global"
}

enum Format: String, Codable {
    case apng = "APNG"
    case png = "PNG"
}

// MARK: - ResizedIcon
struct ResizedIcon: Codable {
    let url: String
    let width, height: Int
    let format: Format?
}

// MARK: - TiersByRequiredAwarding
struct TiersByRequiredAwarding: Codable {
    let resizedIcons: [ResizedIcon]
    let awardingsRequired: Int
    let staticIcon: ResizedIcon
    let resizedStaticIcons: [ResizedIcon]
    let icon: ResizedIcon

    enum CodingKeys: String, CodingKey {
        case resizedIcons = "resized_icons"
        case awardingsRequired = "awardings_required"
        case staticIcon = "static_icon"
        case resizedStaticIcons = "resized_static_icons"
        case icon
    }
}

// MARK: - FlairRichtext
struct FlairRichtext: Codable {
    let e: E
    let t, a: String?
    let u: String?
}

enum E: String, Codable {
    case emoji = "emoji"
    case text = "text"
}

enum FlairTextColor: String, Codable {
    case dark = "dark"
    case light = "light"
}

enum FlairType: String, Codable {
    case richtext = "richtext"
    case text = "text"
}

enum Edited: Codable {
    case bool(Bool)
    case integer(Int)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Bool.self) {
            self = .bool(x)
            return
        }
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        throw DecodingError.typeMismatch(Edited.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Edited"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .bool(let x):
            try container.encode(x)
        case .integer(let x):
            try container.encode(x)
        }
    }
}

// MARK: - GalleryData
struct GalleryData: Codable {
    let items: [Item]
}

// MARK: - Item
struct Item: Codable {
    let mediaID: String
    let id: Int

    enum CodingKeys: String, CodingKey {
        case mediaID = "media_id"
        case id
    }
}

// MARK: - Gildings
struct Gildings: Codable {
    let gid1, gid2, gid3: Int?

    enum CodingKeys: String, CodingKey {
        case gid1 = "gid_1"
        case gid2 = "gid_2"
        case gid3 = "gid_3"
    }
}

// MARK: - Media
struct Media: Codable {
    let oembed: Oembed?
    let type: String?
    let redditVideo: RedditVideo?

    enum CodingKeys: String, CodingKey {
        case oembed, type
        case redditVideo = "reddit_video"
    }
}

// MARK: - Oembed
struct Oembed: Codable {
    let providerURL: String
    let url: String?
    let html, authorName: String
    let height: Int?
    let width: Int
    let version: String
    let authorURL: String
    let providerName: String
    let cacheAge: Int?
    let type: String
    let title: String?
    let thumbnailWidth: Int?
    let thumbnailURL: String?
    let thumbnailHeight: Int?

    enum CodingKeys: String, CodingKey {
        case providerURL = "provider_url"
        case url, html
        case authorName = "author_name"
        case height, width, version
        case authorURL = "author_url"
        case providerName = "provider_name"
        case cacheAge = "cache_age"
        case type, title
        case thumbnailWidth = "thumbnail_width"
        case thumbnailURL = "thumbnail_url"
        case thumbnailHeight = "thumbnail_height"
    }
}

// MARK: - RedditVideo
struct RedditVideo: Codable {
    let bitrateKbps: Int
    let fallbackURL: String
    let height, width: Int
    let scrubberMediaURL: String
    let dashURL: String
    let duration: Int
    let hlsURL: String
    let isGIF: Bool
    let transcodingStatus: String

    enum CodingKeys: String, CodingKey {
        case bitrateKbps = "bitrate_kbps"
        case fallbackURL = "fallback_url"
        case height, width
        case scrubberMediaURL = "scrubber_media_url"
        case dashURL = "dash_url"
        case duration
        case hlsURL = "hls_url"
        case isGIF = "is_gif"
        case transcodingStatus = "transcoding_status"
    }
}

// MARK: - MediaEmbed
struct MediaEmbed: Codable {
    let content: String?
    let width: Int?
    let scrolling: Bool?
    let height: Int?
    let mediaDomainURL: String?

    enum CodingKeys: String, CodingKey {
        case content, width, scrolling, height
        case mediaDomainURL = "media_domain_url"
    }
}

// MARK: - MediaMetadatum
struct MediaMetadatum: Codable {
    let status, e, m: String
    let p: [S]
    let s: S
    let id: String
}

// MARK: - S
struct S: Codable {
    let y, x: Int
    let u: String
}

enum WhitelistStatus: String, Codable {
    case allAds = "all_ads"
    case promoAdultNsfw = "promo_adult_nsfw"
    case someAds = "some_ads"
}

enum PostHint: String, Codable {
    case hostedVideo = "hosted:video"
    case image = "image"
    case link = "link"
    case richVideo = "rich:video"
}

// MARK: - Preview
struct Preview: Codable {
    let images: [Image]
    let enabled: Bool
}

// MARK: - Image
struct Image: Codable {
    let source: ResizedIcon
    let resolutions: [ResizedIcon]
    let variants: Variants
    let id: String
}

// MARK: - Variants
struct Variants: Codable {
    let obfuscated, nsfw: Nsfw?
}

// MARK: - Nsfw
struct Nsfw: Codable {
    let source: ResizedIcon
    let resolutions: [ResizedIcon]
}

enum SubredditType: String, Codable {
    case subredditTypePublic = "public"
}

enum Kind: String, Codable {
    case t3 = "t3"
}



