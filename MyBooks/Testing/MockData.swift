//
//  Mock.swift
//  MyBooks
//
//  Created by Asya Tealdi on 16/06/2024.
//

import Foundation

// Mock data for BookElement
let mockBooks: [Book] = [
    Book(
        kind: .booksVolume,
        id: "1",
        etag: "etag1",
        selfLink: "http://example.com/selfLink1",
        volumeInfo: VolumeInfo(
            title: "Mock Book Title 1",
            authors: ["Author 1", "Author 2"],
            publisher: "Mock Publisher",
            publishedDate: "2024-01-01",
            description: "This is a mock description of the first book.",
            industryIdentifiers: [
                IndustryIdentifier(type: .isbn10, identifier: "1234567890"),
                IndustryIdentifier(type: .isbn13, identifier: "123-1234567890")
            ],
            readingModes: ReadingModes(text: true, image: false),
            pageCount: 123,
            printType: .book,
            categories: ["Fiction", "Science Fiction"],
            averageRating: 4.5,
            ratingsCount: 100,
            maturityRating: .notMature,
            allowAnonLogging: true,
            contentVersion: "1.0",
            panelizationSummary: PanelizationSummary(containsEpubBubbles: false, containsImageBubbles: false),
            imageLinks: ImageLinks(smallThumbnail: "http://example.com/smallThumbnail1", thumbnail: "http://example.com/thumbnail1"),
            language: .en,
            previewLink: "http://example.com/previewLink1",
            infoLink: "http://example.com/infoLink1",
            canonicalVolumeLink: "http://example.com/canonicalVolumeLink1",
            subtitle: "Mock Subtitle 1"
        ),
        saleInfo: SaleInfo(
            country: .nl,
            saleability: .forSale,
            isEbook: true,
            listPrice: SaleInfoListPrice(amount: 9.99, currencyCode: .eur),
            retailPrice: SaleInfoListPrice(amount: 7.99, currencyCode: .eur),
            buyLink: "http://example.com/buyLink1",
            offers: [
                Offer(finskyOfferType: 1, listPrice: OfferListPrice(amountInMicros: 9990000, currencyCode: .eur), retailPrice: OfferListPrice(amountInMicros: 7990000, currencyCode: .eur))
            ]
        ),
        accessInfo: AccessInfo(
            country: .nl,
            viewability: .partial,
            embeddable: true,
            publicDomain: false,
            textToSpeechPermission: .allowed,
            epub: Epub(isAvailable: true, acsTokenLink: "http://example.com/acsTokenLink1"),
            pdf: Epub(isAvailable: true, acsTokenLink: "http://example.com/acsTokenLink1"),
            webReaderLink: "http://example.com/webReaderLink1",
            accessViewStatus: .sample,
            quoteSharingAllowed: true
        ),
        searchInfo: SearchInfo(textSnippet: "This is a mock text snippet for the first book.")
    ),
    // Add more BookElement instances as needed for additional mock data
]

