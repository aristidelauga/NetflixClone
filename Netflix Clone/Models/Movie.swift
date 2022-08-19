//
//  Movie.swift
//  Netflix Clone
//
//  Created by Aristide LAUGA on 19/08/2022.
//

import Foundation

struct trendingMoviesResponse: Codable {
  let results: [Movie]
}

struct Movie: Codable {
  let id: Int
  let media_type: String?
  let original_name: String?
  let original_title: String?
  let posterPath: String?
  let overview: String?
  let vote_count: Int
  let release_date: String?
  let vote_average: Double
}
