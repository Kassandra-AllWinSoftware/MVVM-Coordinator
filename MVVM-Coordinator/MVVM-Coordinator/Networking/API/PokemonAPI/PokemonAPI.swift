//
//  PokemonAPI.swift
//  MVVM-Coordinator
//
//  Created by User-K02 on 6/29/23.
//

import Foundation

final class PokemonAPI { }

extension PokemonAPI: PokemonAPIRepresentable {
    func loadPokemon(completion: @escaping (Result<[Pokemon], APIError>) -> Void) {
        
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=60&offset=0") else {
            return completion(.failure(.invalidURL))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                return completion(.failure(.genericError(error)))
            }
            guard let data = data else {
                return completion(.failure(.noData))
            }
            guard let pokemonList = try? JSONDecoder().decode([Pokemon].self, from: data) else {
                return completion(.failure(.decodingError))
                
            }
            completion(.success(pokemonList))
        }
        .resume()
    }
}
