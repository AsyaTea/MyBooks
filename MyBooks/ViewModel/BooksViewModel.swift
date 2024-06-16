//
//  BooksViewModel.swift
//  MyBooks
//
//  Created by Asya Tealdi on 16/06/2024.
//

import Foundation
import Combine

class BooksViewModel: ObservableObject {
    @Published var books = [Book]()
    var cancellables = Set<AnyCancellable>()

    init() {
    }
    
    func fetchBooks(query: String) {
        
        let urlString = "https://www.googleapis.com/books/v1/volumes?q=\(query)"
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: BookResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Error fetching books. \(error)")
                }
            } receiveValue: { [weak self] response in
                self?.books = response.items
            }
            .store(in: &cancellables)

        
        
    }
    
    func secureImageUrl(from urlString: String?) -> URL? {
            guard let urlString = urlString, var urlComponents = URLComponents(string: urlString) else {
                return nil
            }
            if urlComponents.scheme == "http" {
                urlComponents.scheme = "https"
            }
            return urlComponents.url
        }
    

}
