//
//  PokemonAPIRepresentable.swift
//  MVVM-Coordinator
//
//  Created by User-K02 on 6/29/23.
//

import Foundation

protocol PokemonAPIRepresentable {
    func loadPokemon(completion: @escaping(Result<[Pokemon],APIError>) -> Void)
}
