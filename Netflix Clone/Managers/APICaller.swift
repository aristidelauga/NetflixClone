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

enum APIError: Error {
  case failedToGetData
}

class APICaller {
  static let shared = APICaller()
  
  func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
    guard let url = URL(string: "https://api.themoviedb.org/3/trending/movie/day?api_key=\(Constants.apikey)") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else { return }
      do {
        let results = try JSONDecoder().decode(trendingMoviesResponse.self, from: data)
        completion(.success(results.results))
      } catch {
        completion(.failure(error))
      }
    }
    task.resume()
  }
  
  func getTrendingTvs(completion: @escaping (Result<[Tv], Error>) -> Void) {
    guard let url = URL(string: "https://api.themoviedb.org/3/trending/tv/day?api_key=\(Constants.apikey)") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else { return }
      do {
        let results = try JSONDecoder().decode(TrendingTvResponse.self, from: data)
        completion(.success(results.results))
      } catch {
        completion(.failure(error))
      }
    }
    task.resume()
  }
  
  func getUpcomingMovies(completion: @escaping (Result<Movie, Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/movie/upcoming?api_key=\(Constants.apikey)&language=en-US&page=1") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else { return }
      do {
        let results = try JSONDecoder().decode(trendingMoviesResponse.self, from: data)
        print(results)
      } catch {
        print(error.localizedDescription)
      }
    }
    task.resume()
  }
  
  func getPopularMovies(completion: @escaping (Result<Movie, Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/movie/popular?api_key=\(Constants.apikey)&language=en-US&page=1") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else { return }
      do {
        let results = try JSONDecoder().decode(trendingMoviesResponse.self, from: data)
        print(results)
      } catch {
        print(error.localizedDescription)
      }
    }
    task.resume()
  }
  
  func getTopRatedMovies(completion: @escaping (Result<Movie, Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/movie/top_rated?api_key=\(Constants.apikey)&language=en-US&page=1") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else { return }
      do {
        let results = try JSONDecoder().decode(trendingMoviesResponse.self, from: data)
        print(results)
      } catch {
        print(error.localizedDescription)
      }
    }
    task.resume()
  }
}
