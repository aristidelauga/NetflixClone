//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Aristide LAUGA on 19/08/2022.
//

import Foundation

struct Constants {
  static let apikey = "bc2ac24bdb6ae0ada667a28a0dfe7c06"
  static let baseURL = "https://api.themoviedb.org"
}

class APICaller {
  static let shared = APICaller()
  
  func getTrendingMovies(completion: @escaping (String) -> Void) {
    guard let url = URL(string: "https://api.themoviedb.org/3/trending/all/day?api_key=\(Constants.apikey)") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else { return }
      do {
        let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
        print(results)
      } catch {
        print(error.localizedDescription)
      }
    }
    task.resume()
  }
}
