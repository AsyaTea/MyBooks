//
//  BookModel.swift
//  MyBooks
//
//  Created by Asya Tealdi on 15/06/2024.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let book = try? JSONDecoder().decode(Book.self, from: jsonData)

struct BookResponse: Codable {
    let items: [Book]
}

// MARK: - BookElement
struct Book: Codable, Identifiable {
    let kind: Kind
    var id, etag: String
    let selfLink: String
    let volumeInfo: VolumeInfo
    let saleInfo: SaleInfo?
    let accessInfo: AccessInfo
    let searchInfo: SearchInfo?
}

// MARK: - AccessInfo
struct AccessInfo: Codable {
    let country: Country
    let viewability: Viewability
    let embeddable, publicDomain: Bool
    let textToSpeechPermission: TextToSpeechPermission
    let epub, pdf: Epub
    let webReaderLink: String
    let accessViewStatus: AccessViewStatus
    let quoteSharingAllowed: Bool
}

enum AccessViewStatus: String, Codable {
    case none = "NONE"
    case sample = "SAMPLE"
    case fullPublicDomain = "FULL_PUBLIC_DOMAIN"
}

enum Country: String, Codable {
    case nl = "NL"
}

// MARK: - Epub
struct Epub: Codable {
    let isAvailable: Bool
    let acsTokenLink: String?
}

enum TextToSpeechPermission: String, Codable {
    case allowed = "ALLOWED"
}

enum Viewability: String, Codable {
    case noPages = "NO_PAGES"
    case partial = "PARTIAL"
    case allPages = "ALL_PAGES"
}

enum Kind: String, Codable {
    case booksVolume = "books#volume"
}

// MARK: - SaleInfo
struct SaleInfo: Codable {
    let country: Country
    let saleability: Saleability
    let isEbook: Bool
    let listPrice, retailPrice: SaleInfoListPrice?
    let buyLink: String?
    let offers: [Offer]?
}

// MARK: - SaleInfoListPrice
struct SaleInfoListPrice: Codable {
    let amount: Double
    let currencyCode: CurrencyCode
}

enum CurrencyCode: String, Codable {
    case eur = "EUR"
}

// MARK: - Offer
struct Offer: Codable {
    let finskyOfferType: Int
    let listPrice, retailPrice: OfferListPrice
}

// MARK: - OfferListPrice
struct OfferListPrice: Codable {
    let amountInMicros: Int
    let currencyCode: CurrencyCode
}

enum Saleability: String, Codable {
    case forSale = "FOR_SALE"
    case notForSale = "NOT_FOR_SALE"
    case free = "FREE"
}

// MARK: - SearchInfo
struct SearchInfo: Codable {
    let textSnippet: String
}

// MARK: - VolumeInfo
struct VolumeInfo: Codable {
    let title: String
    let authors: [String]?
    let publisher: String?
    let publishedDate: String
    let description: String?
    let industryIdentifiers: [IndustryIdentifier]?
    let readingModes: ReadingModes
    let pageCount: Int?
    let printType: PrintType
    let categories: [String]?
    let averageRating: Double?
    let ratingsCount: Int?
    let maturityRating: MaturityRating
    let allowAnonLogging: Bool
    let contentVersion: String
    let panelizationSummary: PanelizationSummary?
    let imageLinks: ImageLinks?
    let language: Language
    let previewLink: String
    let infoLink: String
    let canonicalVolumeLink: String
    let subtitle: String?
}

// MARK: - ImageLinks
struct ImageLinks: Codable {
    let smallThumbnail, thumbnail: String
}

// MARK: - IndustryIdentifier
struct IndustryIdentifier: Codable {
    let type: TypeEnum
    let identifier: String
}

enum TypeEnum: String, Codable {
    case isbn10 = "ISBN_10"
    case isbn13 = "ISBN_13"
    case unknown
    
    init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(String.self)
            self = TypeEnum(rawValue: rawValue) ?? .unknown
        }
}

enum Language: String, Codable {
    case en = "en"
    case nl = "nl"
}

enum MaturityRating: String, Codable {
    case notMature = "NOT_MATURE"
}

// MARK: - PanelizationSummary
struct PanelizationSummary: Codable {
    let containsEpubBubbles, containsImageBubbles: Bool
}

enum PrintType: String, Codable {
    case book = "BOOK"
}

// MARK: - ReadingModes
struct ReadingModes: Codable {
    let text, image: Bool
}

