//
//  BookModel.swift
//  MyBooks
//
//  Created by Asya Tealdi on 15/06/2024.
//

import Foundation

struct BookModel: Codable {
    let coverI: Int
    let hasFulltext: Bool
    let editionCount: Int
    let title: String
    let authorName: [String]
    let firstPublishYear: Int
    let key: String
    let ia, authorKey: [String]
    let publicScanB: Bool

    enum CodingKeys: String, CodingKey {
        case coverI = "cover_i"
        case hasFulltext = "has_fulltext"
        case editionCount = "edition_count"
        case title
        case authorName = "author_name"
        case firstPublishYear = "first_publish_year"
        case key, ia
        case authorKey = "author_key"
        case publicScanB = "public_scan_b"
    }
}
